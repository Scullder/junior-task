<?php
$query = 'CREATE TABLE chairs
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    feature_id INT,
    section_id INT,
    producer_id INT,
    name VARCHAR(255) NOT NULL,
    user_manual VARCHAR(255),
    creating_manual VARCHAR(255),
    yandex_image VARCHAR(255),
    print_image VARCHAR(255),
    image VARCHAR(255)
);';