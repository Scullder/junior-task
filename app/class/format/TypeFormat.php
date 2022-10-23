<?php

namespace App\Class\Format;

class TypeFormat
{
    public function formatting($value, $type) : mixed
    {
        if($type == 'tinyint') {
            $value = ($value != '');
        }
        else if($type == 'smallint' || $type == 'int') {
            //$value = stristr($value, ' ', true);
            $value = preg_replace('/[^0-9]/', '', $value);
        }
        else if($type == 'float' || $type == 'double') {
            $value = preg_replace('/[^0-9\,]/', '', $value);
            $value = str_replace(',', '.', $value);
        }
        else if($type == 'varchar') {
            $value = trim($value);
            $value = "'$value'";
        }
        return $value;
    }
}
