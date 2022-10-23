<?php

$query = '
ALTER TABLE chairs
    ADD CONSTRAINT `FK_chairs_sections`
        FOREIGN KEY foreign_key_name(`section_id`)
            REFERENCES sections(`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;

ALTER TABLE chairs
    ADD CONSTRAINT `FK_chairs_producers`
        FOREIGN KEY foreign_key_name(`producer_id`)
            REFERENCES producers(`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;';