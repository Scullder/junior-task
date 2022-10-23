<?php

$query = 'ALTER TABLE producers
    ADD UNIQUE (name);

ALTER TABLE sections
    ADD UNIQUE (name);

ALTER TABLE colors
    ADD UNIQUE (color);

ALTER TABLE armrests
    ADD UNIQUE (description);
    
ALTER TABLE features
    ADD UNIQUE (chair_id);';