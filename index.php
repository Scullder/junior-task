<?php
session_start();
require "vendor/autoload.php";
require "routes/routes.php";

use Core\App;

$app = new App;
$app->start();
