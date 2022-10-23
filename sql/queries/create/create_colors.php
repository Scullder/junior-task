<?php
$query = 'CREATE TABLE colors
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(255)
);

CREATE TABLE chairs_colors
(
    chair_id INT,
    color_id INT,
    CONSTRAINT `FK_chairs`
        FOREIGN KEY (`chair_id`)
        REFERENCES `chairs` (`id`) ON DELETE CASCADE,
    CONSTRAINT `FK_colors`
        FOREIGN KEY (`color_id`)
        REFERENCES `colors` (`id`) ON DELETE CASCADE
);';