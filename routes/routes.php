<?php

use Core\App;
use App\Controllers\IndexController;
use App\Controllers\ImportController;

// вывод записей
App::get('/', [IndexController::class, 'index']);
App::get('/description', [IndexController::class, 'description']);

// импортирование файлов в БД
App::get('/import', [ImportController::class, 'index']);
App::post('/import', [ImportController::class, 'store']);