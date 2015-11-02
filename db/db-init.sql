-- TO USE THIS FILE IN Cloud9
-- Run this command inside the MySQL command line client:
--
-- source ~/workspace/house-points/db/db-init.sql
--
-- Be careful! This file will DROP the existing library database.

-- Drop the existing library database.
DROP DATABASE `housepoints`;

-- Create a new, empty library database.
CREATE DATABASE `housepoints`;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema housepoints
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema housepoints
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `housepoints` DEFAULT CHARACTER SET utf8 ;
USE `housepoints` ;

-- -----------------------------------------------------
-- Table `housepoints`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`Student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `house` VARCHAR(45) NOT NULL,
  `house_point_total` INT NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`Supervisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`Supervisor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`Activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`Activity` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `house_point_value` INT NOT NULL,
  `Supervisor_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Activity_Supervisor1_idx` (`Supervisor_id` ASC),
  CONSTRAINT `fk_Activity_Supervisor1`
    FOREIGN KEY (`Supervisor_id`)
    REFERENCES `housepoints`.`Supervisor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`Student_participates_in_Activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`Student_participates_in_Activity` (
  `Student_id` INT NOT NULL,
  `Activity_id` INT NOT NULL,
  `Approval_Status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`Student_id`, `Activity_id`),
  INDEX `fk_Student_has_Activity_Activity1_idx` (`Activity_id` ASC),
  INDEX `fk_Student_has_Activity_Student_idx` (`Student_id` ASC),
  CONSTRAINT `fk_Student_has_Activity_Student`
    FOREIGN KEY (`Student_id`)
    REFERENCES `housepoints`.`Student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Activity_Activity1`
    FOREIGN KEY (`Activity_id`)
    REFERENCES `housepoints`.`Activity` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `housepoints`.`Student`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`Student` (`id`, `first_name`, `last_name`, `house`, `house_point_total`, `grade`) VALUES (1, 'Graeme', 'Edwards', 'Canterbury', 10000, 12);
INSERT INTO `housepoints`.`Student` (`id`, `first_name`, `last_name`, `house`, `house_point_total`, `grade`) VALUES (2, 'Cameron', 'Raymond', 'Winchester', 3000, 12);
INSERT INTO `housepoints`.`Student` (`id`, `first_name`, `last_name`, `house`, `house_point_total`, `grade`) VALUES (3, 'Jamie', 'Linsdell', 'Westminster', 2500, 12);
INSERT INTO `housepoints`.`Student` (`id`, `first_name`, `last_name`, `house`, `house_point_total`, `grade`) VALUES (4, 'Christien', 'Kelly', 'Westminster', 4990, 12);
INSERT INTO `housepoints`.`Student` (`id`, `first_name`, `last_name`, `house`, `house_point_total`, `grade`) VALUES (5, 'Ross', 'Hill', 'Westminster', 880, 12);

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`Supervisor`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (1, 'Rachel DeBlois');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (2, 'Julie Girvan');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (3, 'Rickesh Kotecha');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (4, 'Adrian Thornburry');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (5, 'Paul O\'Leary');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (6, 'Alison Hart');
INSERT INTO `housepoints`.`Supervisor` (`id`, `name`) VALUES (7, 'Paul Darvasi');

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`Activity`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (1, 'Reach for the Top', 50, 1);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (2, 'Volleyball Team', 100, 5);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (3, 'Soccer Team', 100, 4);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (4, 'Rap Club', 50, 6);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (5, 'Prefect', 150, 2);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (6, 'House Captain', 150, 2);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (7, 'Steward', 150, 2);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (8, 'Boxing Club', 50, 3);
INSERT INTO `housepoints`.`Activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (9, 'Photography Club', 50, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`Student_participates_in_Activity`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (1, 1, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (1, 2, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (3, 2, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (3, 4, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (2, 5, False);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (4, 6, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (5, 2, False);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (4, 5, True);
INSERT INTO `housepoints`.`Student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (2, 9, True);

COMMIT;

