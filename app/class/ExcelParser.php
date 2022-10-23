<?php

namespace App\Class;

use App\Class\Interfaces\Parser;
use PhpOffice\PhpSpreadsheet\IOFactory;

class ExcelParser implements Parser
{
    /**
     * @var array перевод таблицы на англ. - ['название на русском в файле' =>['название на английском в БД' => 'таблица']
     */
    private array $dbTable = [
        'Наименование товара' => ['name', 'chairs'],
        'ID элемента' => ['id', 'chairs'],
        'Скачать инструкцию по эксплуатации' => ['user_manual', 'chairs'],
        'Скачать инструкцию по сборке' => ['creating_manual', 'chairs'],
        'Изображения для Яндекс.Директа' => ['yandex_image', 'chairs'],
        'Изображение для печати' => ['print_image', 'chairs'],
        'Картинка для анонса (путь)' => ['image', 'chairs'],
        'Артикул' => ['article', 'features'],
        'Материал' => ['material', 'features'],
        'Натуральная кожа' => ['leather', 'features'],
        'Ширина' => ['width', 'features'],
        'Диапазон регулировки' => ['control_range', 'features'],
        'Высота' => ['height', 'features'],
        'Высота спинки' => ['height_back', 'features'],
        'Глубина' => ['depth', 'features'],
        'Макс нагрузка' => ['max_weight', 'features'],
        'Цвета' => ['color', 'colors'],
        'Ролики' => ['rollers', 'features'],
        'Пятилучье' => ['five_pointed', 'features'],
        'Подлокотники' => ['description', 'armrests'],
        'Вес (кг) коробки' => ['weight', 'features'],
        'Объем' => ['volume', 'features'],
        'Габариты изделия (см' => ['size_chair', 'features'],
        'Габариты упаковки (см)' => ['size_package', 'features'],
        'Ширина сиденья' => ['place_width', 'features'],
        'Глубина сиденья' => ['place_depth', 'features'],
        'Гарантия' => ['guarantee', 'features'],
        'Механизм качания' => ['mechanism', 'features'],
        'Название раздела' => ['name', 'sections'],
        'Производитель' => ['name', 'producers'],
    ];

    public function parse(string $file) : array
    {
        $reader = IOFactory::createReader('Xlsx');
        $reader->setReadDataOnly(true);
        $spreadsheet = $reader->load($file);
        $data = $spreadsheet->getActiveSheet()->toArray();

        // distinct rows by [0] - 'id'
        $data = array_intersect_key($data, array_unique(array_column($data, 0)));

        // шапка таблицы
        $keys = $data[0];
        unset($data[0]);

        $resultData = array();
        foreach ($data as &$item) {
            $item = array_combine($keys, $item);

            // парсинг 'характеристики'
            $tags = explode('<br>', $item['Характеристики']);
            foreach ($tags as $tag) {
                $string = strip_tags($tag);
                $featureName = trim(stristr($string, ':', true));
                $featureValue = trim(strrchr($string, ':'), ': ');
                $item[$featureName] = $featureValue;
            }

            $record = array();
            // формирование таблицы результата
            foreach($item as $header => $value) {
                if(array_key_exists($header, $this->dbTable)) {
                    $dbTableRecord = $this->dbTable[$header];
                    $record[$dbTableRecord[1]][$dbTableRecord[0]] = $value;
                }
            }
            $resultData[] = $record;
        }

        return $resultData;
    }
}



