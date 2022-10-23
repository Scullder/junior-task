<?php

$query = 'ALTER TABLE features
ADD CONSTRAINT `FK_features_chairs`
FOREIGN KEY foreign_key_name(`chair_id`)
REFERENCES chairs(`id`)
ON DELETE CASCADE
ON UPDATE CASCADE;';