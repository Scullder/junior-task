<?php

namespace App\Controllers;

use Core\Controller;
use App\Class\ExcelParser;
use Core\Model;
use App\Class\Format\TypeFormat;

class ImportController extends Controller
{
    private Model $model;
    private TypeFormat $typeFormatter;

    public function __construct()
    {
        $this->model = new Model;
        $this->typeFormatter = new TypeFormat;
    }

    public function index()
    {
        $this->view('import.php');
    }

    public function store($request)
    {
        $file = $_FILES['file']['tmp_name'];
        $parser = new ExcelParser;
        $tableData = $parser->parse($file);
        $allColors = array();
        $allArms = array();
        $allProducers = array();
        $allSections = array();

        // проходимся по всем спарсеным из файла данным и добавляем записи в таблиы в которых нет внешних ключей
        foreach ($tableData as $row) {
            $colors = $row['colors']['color'];
            $arms = $row['armrests']['description'];
            $producer = $row['producers']['name'];
            $section = $row['sections']['name'];

            //      ЦВЕТА
            $colors = explode(',', $colors);
            array_walk($colors, function(&$value, $key){
                $value = trim($value);
            });
            $allColors = array_merge($colors, $allColors);

            //      ПОДЛОКОТНИКИ
            if($arms != null) {
                $arms = explode(',', $arms);
                array_walk($arms, function(&$value, $key){
                    $value = trim($value);
                });
                $allArms = array_merge($arms, $allArms);
            }

            //      РАЗДЕЛ / ПРОИЗВОДИТЕЛЬ
            $allProducers[] = trim($producer);
            $allSections[] = trim($section);
        }

        $allColors = array_values(array_unique($allColors));
        $allArms = array_values(array_unique($allArms));
        $allProducers = array_values(array_unique($allProducers));
        $allSections = array_values(array_unique($allSections));

        $insertQueries = array();
        $insertQueries[] = ["INSERT INTO colors(`color`) VALUES" . $this->repeatValues($allColors), $allColors];
        $insertQueries[] = ["INSERT INTO armrests(`description`) VALUES" . $this->repeatValues($allArms), $allArms];
        $insertQueries[] = ["INSERT INTO producers(`name`) VALUES" . $this->repeatValues($allProducers), $allProducers];
        $insertQueries[] = ["INSERT INTO sections(`name`) VALUES" . $this->repeatValues($allSections), $allSections];

        foreach ($insertQueries as $item) {
            $prepare = $this->model->db->prepare($item[0]);
            try {
                $prepare->execute($item[1]);
            }
            catch (\Exception $e) {

            }
        }

        // добавление в БД кресел и их характеристик
        $fields = $this->model->getFieldsHeaders('features');
        unset($fields['id']);
        $insertFeatures = "INSERT INTO `features`(" . implode(',', array_keys($fields)) . ") VALUES";

        $chairFields = $this->model->getFieldsHeaders('chairs');
        $insertChairs = "INSERT INTO `chairs`(" . implode(',', array_keys($chairFields)) . ") VALUES";

        $insertColors  = "INSERT INTO chairs_colors(chair_id, color_id) VALUES";

        $existingChairs = $this->model->getAllChairsId();
        $chairsWithFeatures = $this->model->getChairsWithFeatures('features');

        foreach ($tableData as $row) {
            $chairId = $row['chairs']['id'];
            $features = $row['features'];
            $chair = $row['chairs'];
            $section = $row['sections']['name'];
            $producer = $row['producers']['name'];
            $colors = $row['colors']['color'];

            if(!in_array($chairId, $chairsWithFeatures)) {
                // собираем запрос для добавления Характеристик
                $value = array();
                foreach ($fields as $field => $type) {
                    if ($field == 'chair_id') {
                        $value[] = $chairId;
                    }
                    else if (array_key_exists($field, $features) && $features[$field] != null) {
                        $value[] = $this->typeFormatter->formatting($features[$field], $type);
                    }
                    else {
                        $value[] = 'null';
                    }
                }
                $value = '(' . implode(',', $value) . '), ';
                $insertFeatures .= $value;
            }

            if(!in_array($chairId, $existingChairs)) {
                // собираем запрос для добавления Кресел
                $value = array();
                foreach ($chairFields as $field => $type) {
                    if ($field == ['id']) {
                        $value[] = $chairId;
                    } else if ($field == 'section_id') {
                        $value[] = "(SELECT id FROM `sections` WHERE name = '$section')";
                    } else if ($field == 'producer_id') {
                        $value[] = "(SELECT id FROM `producers` WHERE name = '$producer')";
                    } else if (array_key_exists($field, $chair) && $chair[$field] != null) {
                        $value[] = $this->typeFormatter->formatting($chair[$field], $type);
                    } else {
                        $value[] = 'null';
                    }
                }
                $value = '(' . implode(',', $value) . '), ';
                $insertChairs .= $value;
            }

            // добавление в таблицы которые имеют ограничение МНОГОЕ-КО-МНОГИМ
            $colorsOut = $this->selectFromString('colors', 'color', $colors);
            foreach ($colorsOut as $key => $color) {
                $insertColors .= '(' . $chairId . ',' . $color . '),';
            }
        }

        $logFile = $_SERVER['DOCUMENT_ROOT'] . '\log\import-log.txt';
        $logInfo = date('Y-m-d H:i:s') . ' Скрипт запущен. ';
        try{
            $insertChairs = trim($insertChairs, ', ');
            $chairsCount = $this->model->db->exec($insertChairs);
            $logInfo .= '`chairs` - ' . $chairsCount . ' ';

            $insertColors = trim($insertColors, ', ');
            $this->model->db->exec($insertColors);
        }
        catch (\PDOException $e) {
            echo '<b>При импорте записей произошла ошибка!</b><br>';
            echo $e->getMessage();
        }

        try {
            $insertFeatures = trim($insertFeatures, ', ');
            $featuresCount = $this->model->db->exec($insertFeatures);
            $logInfo .= '`features` - ' . $featuresCount . ' ';
        }
        catch (\PDOException $e) {
            echo '<b>При импорте записей произошла ошибка!</b><br>';
            echo $e->getMessage();
        }

        $time = microtime(true) - $_SERVER['REQUEST_TIME_FLOAT'];
        $logInfo .= '(' . round($time, 2) . ')' . PHP_EOL;
        file_put_contents($logFile, $logInfo, FILE_APPEND);

        $this->redirect('/');
    }

    private function repeatValues($arr)
    {
        return trim(str_repeat('(?),', count($arr)), ',');
    }

    /**
     * получение записей по строке элементов из файла
     * ячейка с цветами например
     */
    private function selectFromString($table, $field, $values): array
    {
        $colors = explode(',', $values);
        foreach ($colors as &$color) {
            $color = trim($color);
        }
        $selectColors = "SELECT id FROM $table WHERE $field IN(" . trim(str_repeat('?,', count($colors)), ',') . ")";
        $prepareColors = $this->model->db->prepare($selectColors);
        $prepareColors->execute($colors);
        $colorsR = $prepareColors->fetchAll(\PDO::FETCH_NUM);
        $colorsOut = [];
        array_walk_recursive($colorsR, function ($colorsR) use (&$colorsOut) {
            $colorsOut[] = $colorsR;
        });

        return $colorsOut;
    }
}