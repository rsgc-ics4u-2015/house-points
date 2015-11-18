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
-- Table `housepoints`.`house`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`house` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `short_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `house_point_total` INT NOT NULL,
  `grade` INT NOT NULL,
  `house_id` INT NOT NULL,
  PRIMARY KEY (`id`, `house_id`),
  INDEX `fk_student_house1_idx` (`house_id` ASC),
  CONSTRAINT `fk_student_house1`
    FOREIGN KEY (`house_id`)
    REFERENCES `housepoints`.`house` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`supervisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`supervisor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`activity` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `house_point_value` INT NOT NULL,
  `Supervisor_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Activity_Supervisor1_idx` (`Supervisor_id` ASC),
  CONSTRAINT `fk_Activity_Supervisor1`
    FOREIGN KEY (`Supervisor_id`)
    REFERENCES `housepoints`.`supervisor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `housepoints`.`student_participates_in_Activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `housepoints`.`student_participates_in_Activity` (
  `Student_id` INT NOT NULL,
  `Activity_id` INT NOT NULL,
  `Approval_Status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`Student_id`, `Activity_id`),
  INDEX `fk_Student_has_Activity_Activity1_idx` (`Activity_id` ASC),
  INDEX `fk_Student_has_Activity_Student_idx` (`Student_id` ASC),
  CONSTRAINT `fk_Student_has_Activity_Student`
    FOREIGN KEY (`Student_id`)
    REFERENCES `housepoints`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Activity_Activity1`
    FOREIGN KEY (`Activity_id`)
    REFERENCES `housepoints`.`activity` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `housepoints`.`house`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`house` (`id`, `name`, `short_name`) VALUES (1, 'Canterbury', 'Cant');
INSERT INTO `housepoints`.`house` (`id`, `name`, `short_name`) VALUES (2, 'Westminster', 'West');
INSERT INTO `housepoints`.`house` (`id`, `name`, `short_name`) VALUES (3, 'Winchester', 'Winch');
INSERT INTO `housepoints`.`house` (`id`, `name`, `short_name`) VALUES (4, 'York', 'York');

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`student`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`student` (`id`, `first_name`, `last_name`, `house_point_total`, `grade`, `house_id`) VALUES (1, 'Graeme', 'Edwards', 10000, 12, DEFAULT);
INSERT INTO `housepoints`.`student` (`id`, `first_name`, `last_name`, `house_point_total`, `grade`, `house_id`) VALUES (2, 'Cameron', 'Raymond', 3000, 12, DEFAULT);
INSERT INTO `housepoints`.`student` (`id`, `first_name`, `last_name`, `house_point_total`, `grade`, `house_id`) VALUES (3, 'Jamie', 'Linsdell', 2500, 12, DEFAULT);
INSERT INTO `housepoints`.`student` (`id`, `first_name`, `last_name`, `house_point_total`, `grade`, `house_id`) VALUES (4, 'Christien', 'Kelly', 4990, 12, DEFAULT);
INSERT INTO `housepoints`.`student` (`id`, `first_name`, `last_name`, `house_point_total`, `grade`, `house_id`) VALUES (5, 'Ross', 'Hill', 880, 12, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`supervisor`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (1, 'Rachel DeBlois');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (2, 'Julie Girvan');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (3, 'Rickesh Kotecha');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (4, 'Adrian Thornburry');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (5, 'Paul O\'Leary');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (6, 'Alison Hart');
INSERT INTO `housepoints`.`supervisor` (`id`, `name`) VALUES (7, 'Paul Darvasi');

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`activity`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (1, 'Reach for the Top', 50, 1);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (2, 'Volleyball Team', 100, 5);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (3, 'Soccer Team', 100, 4);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (4, 'Rap Club', 50, 6);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (5, 'Prefect', 150, 2);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (6, 'House Captain', 150, 2);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (7, 'Steward', 150, 2);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (8, 'Boxing Club', 50, 3);
INSERT INTO `housepoints`.`activity` (`id`, `name`, `house_point_value`, `Supervisor_id`) VALUES (9, 'Photography Club', 50, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `housepoints`.`student_participates_in_Activity`
-- -----------------------------------------------------
START TRANSACTION;
USE `housepoints`;
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (1, 1, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (1, 2, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (3, 2, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (3, 4, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (2, 5, False);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (4, 6, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (5, 2, False);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (4, 5, True);
INSERT INTO `housepoints`.`student_participates_in_Activity` (`Student_id`, `Activity_id`, `Approval_Status`) VALUES (2, 9, True);

COMMIT;

