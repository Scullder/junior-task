<?php

namespace App\Class\Interfaces;

interface Parser
{
    /**
     * Метод получающий путь к файлу, после обработки которого возврат строк для вставки их в БД
     *
     * @param string $file
     * @return mixed
     */
    public function parse(string $file) : array;
}
