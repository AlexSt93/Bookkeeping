-- MySQL Script generated by MySQL Workbench
-- 05/02/15 23:01:03
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Bookkeeping
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Bookkeeping` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Bookkeeping` ;

-- -----------------------------------------------------
-- Table `Bookkeeping`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bookkeeping`.`Category` ;

CREATE TABLE IF NOT EXISTS `Bookkeeping`.`Category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bookkeeping`.`Category_list`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bookkeeping`.`Category_list` ;

CREATE TABLE IF NOT EXISTS `Bookkeeping`.`Category_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Category_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bookkeeping`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bookkeeping`.`User` ;

CREATE TABLE IF NOT EXISTS `Bookkeeping`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NULL,
  `Category_list_id` INT DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bookkeeping`.`Expenses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bookkeeping`.`Expenses` ;

CREATE TABLE IF NOT EXISTS `Bookkeeping`.`Expenses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  `date` DATE NULL,
  `value` INT NULL,
  `User_id` INT NOT NULL,
  `Category_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bookkeeping`.`Income`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bookkeeping`.`Income` ;

CREATE TABLE IF NOT EXISTS `Bookkeeping`.`Income` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` INT NULL,
  `date` DATE NULL,
  `description` VARCHAR(45) NULL,
  `User_id` INT NOT NULL, 
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;