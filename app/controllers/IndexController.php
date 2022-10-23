<?php

namespace App\Controllers;

use Core\Controller;
use Core\Model;
use App\Class\Pagination\Paginator;

class IndexController extends Controller
{
    private $sortList = [
        'chairName' => 'chairs.name',
        'sectionName' => 'sections.name',
        'producerName' => 'producers.name',
        'id' => 'id',
    ];

    private $perPage = 15;

    public function index($request)
    {
        $model = new Model;

        // Данные для сортировки
        $sort = 'id';
        $sortForPagin = $sort;
        if(array_key_exists('sort', $request)) {
            $sort = $this->sortList[$request['sort']];
            $sortForPagin = $request['sort'];
        }
        $active = $this->getActiveSort($request);

        // Данные для пагинации
        $countRecords = $model->db->query("SELECT count(id) FROM chairs")->fetchColumn();
        $paginator = new Paginator($countRecords, $this->perPage);
        $offset = $paginator->getOffset();
        $limit = $paginator->getLimit();
        $pages = $paginator->getTotalPages();

        $chairs = $model->allChairs($sort, $limit, $offset);
        if(!$chairs) {
            $this->view('errors\chairs_not_found.php');
            die();
        }

        $this->view('index.php', ['chairs' => $chairs, 'active' => $active, 'pages' => $pages, 'sort' => $sortForPagin]);
    }

    public function description($request)
    {
        $model = new Model;
        $id = $request['chair_id'];
        $features = $model->featuresByChairId($id);
        if(!$features) {
            $this->view('errors\features_not_found.php');
            die();
        }
        // если изображения ещё нет сохраняем под id кресла
        $img = 'img/' . $id . '.jpg';
        if(!file_exists($img)) {
            file_put_contents($img, $features['image']);
        }
        $features['image'] = '/' . $img;

        $this->view('description.php', ['features' => $features]);
    }

    private function getActiveSort($request)
    {
        // для вывода значка выбранной сортировки
        $sort = (isset($request['sort'])) ? $request['sort'] : 'id';
        $active = $this->sortList;
        foreach ($active as &$item) {
            $item = null;
        }
        $active[$sort] = '▲';

        return $active;
    }

}