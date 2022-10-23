<?php
$query = 'CREATE TABLE armrests
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255)
);

CREATE TABLE chairs_armrests
(
    chair_id INT,
    armrest_id INT,
    CONSTRAINT `FK_chairs_armrest`
        FOREIGN KEY (`chair_id`)
        REFERENCES `chairs` (`id`) ON DELETE CASCADE,
    CONSTRAINT `FK_armrest_chair`
        FOREIGN KEY (`armrest_id`)
        REFERENCES `armrests` (`id`) ON DELETE CASCADE
);';