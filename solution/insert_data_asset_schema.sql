USE `asset-schema`;

-- -----------------------------------------------------
-- Table `asset-schema`.`asset`
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS insertRows;
DELIMITER //
CREATE PROCEDURE insertRows()
BEGIN
DECLARE counter INT DEFAULT 0;
WHILE counter <= 1010 DO
    INSERT INTO asset (model_id, registration_no) VALUES (1, '0001');
    SET counter = counter + 1;
END WHILE;
END;

CALL insertRows(); 

INSERT INTO asset (model_id, registration_no)
VALUES (2, '0002');
INSERT INTO asset (model_id)
VALUES (3);

-- -----------------------------------------------------
-- Table `asset-schema`.`vehicle_make`
-- -----------------------------------------------------
INSERT INTO vehicle_make (name)
VALUES ('make1'),
('make2'),
('make3');

-- -----------------------------------------------------
-- Table `asset-schema`.`vehicle_model`
-- -----------------------------------------------------
INSERT INTO vehicle_model (vehicle_make_id, name)
VALUES (1, 'model1'),
(2, 'model2'),
(3, 'model3');