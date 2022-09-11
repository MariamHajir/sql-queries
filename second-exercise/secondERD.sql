CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;
-- -----------------------------------------------------
-- Table `mydb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))

-- -----------------------------------------------------
-- Table `mydb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `office` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))

-- -----------------------------------------------------
-- Table `mydb`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`room` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `capacity` INT NULL,
  PRIMARY KEY (`id`))
-- -----------------------------------------------------
-- Table `mydb`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`course` (
  `crn` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `start_time` TIME NULL,
  `end_time` TIME NULL,
  `room_id` INT NULL,
  PRIMARY KEY (`crn`),
  CONSTRAINT `fk_course_room1`
    FOREIGN KEY (`room_id2`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
-- -----------------------------------------------------
-- Table `mydb`.`majorsin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`majorsin` (
  `student_id` INT NOT NULL,
  `dept_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`, `dept_name`),
  CONSTRAINT `fk_student_has_department_student`
    FOREIGN KEY (`student_id`)
    REFERENCES `mydb`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_department_department1`
    FOREIGN KEY (`dept_name`)
    REFERENCES `mydb`.`department` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
-- -----------------------------------------------------
-- Table `mydb`.`enrolled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`enrolled` (
  `student_id` INT NOT NULL,
  `course_name` VARCHAR(100) NOT NULL,
  `credit_status` VARCHAR(45) NULL,
  PRIMARY KEY (`student_id`, `course_name`),
  CONSTRAINT `fk_student_has_course_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `mydb`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_course_course1`
    FOREIGN KEY (`course_name`)
    REFERENCES `mydb`.`course` (`crn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);