<?php
$query = 'CREATE TABLE features
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    chair_id INT,
    article VARCHAR(255),
    material VARCHAR(255),
    leather BOOL DEFAULT 0,
    width SMALLINT,
    control_range VARCHAR(255),
    height SMALLINT,
    height_back SMALLINT,
    depth SMALLINT,
    max_weight INT,
    rollers VARCHAR(255),
    five_pointed VARCHAR(255),
    weight FLOAT,
    volume FLOAT,
    size_chair VARCHAR(255),
    size_package VARCHAR(255),
    place_width SMALLINT,
    place_depth SMALLINT,
    guarantee FLOAT,
    mechanism VARCHAR(255),
    price_first DOUBLE,
    price_second DOUBLE
);';