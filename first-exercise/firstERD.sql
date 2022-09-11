-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `dob` DATE NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `mydb`.`Movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Movie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `year` DATE NULL,
  `rating` DOUBLE NULL,
  `runtime` INT NULL,
  `genre` VARCHAR(45) NULL,
  `earnings_rank` INT NULL,
  PRIMARY KEY (`id`))



-- -----------------------------------------------------
-- Table `mydb`.`Actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Actor` (
  `actor_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  PRIMARY KEY (`actor_id`, `movie_id`),
  CONSTRAINT `fk_Person_has_Movie_Person`
    FOREIGN KEY (`actor_id`)
    REFERENCES `mydb`.`Person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_has_Movie_Movie1`
    FOREIGN KEY (`movie_id`)
    REFERENCES `mydb`.`Movie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



-- -----------------------------------------------------
-- Table `mydb`.`Director`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Director` (
  `director_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  PRIMARY KEY (`director_id`, `movie_id`),
  CONSTRAINT `fk_Person_has_Movie_Person1`
    FOREIGN KEY (`director_id`)
    REFERENCES `mydb`.`Person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_has_Movie_Movie2`
    FOREIGN KEY (`movie_id`)
    REFERENCES `mydb`.`Movie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- -----------------------------------------------------
-- Table `mydb`.`Oscar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Oscar` (
  `person_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  `type` VARCHAR(45) NULL,
  `year` DATE NULL,
  PRIMARY KEY (`person_id`, `movie_id`),
  CONSTRAINT `fk_Person_has_Movie_Person2`
    FOREIGN KEY (`person_id`)
    REFERENCES `mydb`.`Person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_has_Movie_Movie3`
    FOREIGN KEY (`movie_id`)
    REFERENCES `mydb`.`Movie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)