<?php

namespace Core;

class Model
{
    public \PDO $db;
    private $db_name;

    public function __construct()
    {
        require $_SERVER['DOCUMENT_ROOT'] . '/config.php';
        $this->db_name = $name;

        try{
            $this->db = new \PDO("mysql:host=$host;dbname=$name", $user, $pass);
            $this->db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        }
        catch(\PDOException $e){
            echo $e->getMessage() . "<br>";
        }
    }

    public function exec($query)
    {
        if($query != null) {
            return $this->db->exec($query);
        }
    }

    public function getDatabaseName()
    {
        return $this->db_name;
    }

    public function getFieldsHeaders($table)
    {
        $selectFields = "SELECT COLUMN_NAME, DATA_TYPE FROM information_schema.COLUMNS 
                         WHERE TABLE_SCHEMA = '" . $this->db_name . "' 
                         AND TABLE_NAME = '$table'";
        $res = $this->db->query($selectFields);
        $headers = $res->fetchAll(\PDO::FETCH_NUM);

        // убираем вложенность массива
        $fields = [];
        foreach ($headers as $item) {
            $fields[$item[0]] = $item[1];
        }

        return $fields;
    }

    public function allChairs($sort, $limit, $offset)
    {
        $result = $this->db->query("SELECT chairs.id, chairs.name as chairName, sections.name as sectionName, 
                                                     producers.name as producerName, creating_manual, yandex_image, print_image, image       
                                              FROM chairs 
                                              LEFT JOIN sections ON chairs.section_id = sections.id
                                              LEFT JOIN producers ON chairs.producer_id = producers.id
                                              ORDER BY $sort ASC LIMIT $limit OFFSET $offset");
        $chairs = $result->fetchAll(\PDO::FETCH_ASSOC);
        if(count($chairs) == 0) {
            return false;
        }
        return $chairs;
    }

    public function featuresByChairId($id)
    {
        $result = $this->db->query("SELECT features.*, chairs.name as chairName, producers.name as producer, sections.name as section,
                                                    chairs.image
                                              FROM features
                                                LEFT JOIN chairs ON chairs.id = features.chair_id
                                                LEFT JOIN producers ON producers.id = chairs.producer_id
                                                LEFT JOIN sections ON sections.id = chairs.section_id
                                              WHERE chairs.id = $id");
        $features = $result->fetchAll(\PDO::FETCH_ASSOC);

        $colorResult = $this->db->query("SELECT GROUP_CONCAT(c.color) as colors
                                                   FROM features f
                                                        LEFT JOIN chairs_colors cc on f.chair_id = cc.chair_id
                                                        LEFT JOIN colors c ON c.id = cc.color_id
                                                   WHERE f.chair_id = $id GROUP BY (f.chair_id)");
        $colors = $colorResult->fetchAll(\PDO::FETCH_ASSOC);

        if(count($features) == 0) {
            return false;
        }
        else if(count($colors) != 0) {
            $features = array_merge($features[0], $colors[0]);
        }

        return $features;
    }

    public function getAllChairsId()
    {
        $exists = $this->db->query("SELECT id FROM chairs")->fetchAll(\PDO::FETCH_NUM);
        // убираем вложенность массива
        $out = array();
        foreach ($exists as $item)
        {
           $out[] = $item[0];
        }

        return $out;
    }

    public function getChairsWithFeatures()
    {
        $exists = $this->db->query("SELECT chair_id
                                             FROM features f
                                                LEFT JOIN chairs c on f.chair_id = c.id")->fetchAll(\PDO::FETCH_NUM);
        // убираем вложенность массива
        $out = array();
        foreach ($exists as $item)
        {
            $out[] = $item[0];
        }

        return $out;
    }

}
