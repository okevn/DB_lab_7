SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `DB_Lab7` DEFAULT CHARACTER SET utf8 ;
USE `DB_Lab7` ;

DROP TABLE IF EXISTS `student` ;
DROP TABLE IF EXISTS `city` ;
DROP TABLE IF EXISTS `region` ;
DROP TABLE IF EXISTS `group` ;
DROP TABLE IF EXISTS `graduated_secondary_school` ;
DROP TABLE IF EXISTS `debt` ;
DROP TABLE IF EXISTS `student_has_debt` ;


CREATE TABLE IF NOT EXISTS `DB_Lab7`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `rating` DECIMAL(5,3) NOT NULL,
  `birthday` DATE NOT NULL,
  `entrance_date` DATE NOT NULL,
  `student_card_number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `group_id` INT NOT NULL,
  `graduated_secondary_school_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `DB_Lab7`.`city` (
  `name` VARCHAR(45) NOT NULL,
  `region_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `DB_Lab7`.`region` (
  `name` VARCHAR(45) NOT NULL,
  `code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE INDEX `region_code_UNIQUE` (`code` ASC) VISIBLE)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `DB_Lab7`.`group` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `number` INT NOT NULL,
  `entrance_year` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `DB_Lab7`.`graduated_secondary_school` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `headmaster_name` VARCHAR(45) NOT NULL,
  `headmaster_phone` DECIMAL(12,0) NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `DB_Lab7`.`debt` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `subject` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `subject_UNIQUE` (`subject` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `DB_Lab7`.`student_has_debt` (
  `student_id` INT NOT NULL,
  `debt_id` INT NOT NULL,
  PRIMARY KEY (`student_id`, `debt_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

START TRANSACTION;
USE `DB_Lab7`;

INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Jim', 'Smith', 76.399, '2001-09-22', '2018-09-01', 'VK1234545', 'Jim.Smith.2018@lpnu.ua', 'Lviv', 1, 2);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'John', 'Venmer', 68.777, '2001-07-12', '2018-09-01', 'VK1653245', 'John.Venmer.2018@lpnu.ua', 'Lviv', 2, 2);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Vasyl', 'Brov', 59.299, '2000-11-18', '2017-09-01', 'VK4965416', 'Vasyl.Brov.2017@lpnu.ua', 'Lviv', 4, 1);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Stephen', 'Krovor', 44.866, '2001-01-12', '2018-09-01', 'VL4846515', 'Stephen.Krovor.2018@lpnu.ua', 'Kyiv', 3, 3);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Yura', 'Lit', 57.699, '2000-08-19', '2017-09-01', 'VK8484546', 'Yura.Lit.2017@lpnu.ua', 'Lviv', 4, 3);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Ron', 'Semad', 61.966, '2001-04-29', '2018-09-01', 'AS8784545', 'Ron.Semad.2018@lpnu.ua', 'Lviv', 1, 4);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Michael', 'Riva', 89.222, '2001-01-31', '2018-09-01', 'VK7874546', 'Michael.Riva.2018@lpnu.ua', 'Chernivtsi', 1, 2);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Robert', 'Tur', 79.333, '2001-12-26', '2018-09-01', 'VK8745442', 'Robert.Tur.2018@lpnu.ua', 'Lviv', 3, 1);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'David', 'Topper', 88.6, '2001-09-03', '2018-09-01', 'VK7452152', 'David.Topper.2018@lpnu.ua', 'Lviv', 2, 2);
INSERT INTO `student` (`id`, `name`, `surname`, `rating`, `birthday`, `entrance_date`, `student_card_number`, `email`, `city_name`, `group_id`, `graduated_secondary_school_id`) VALUES (DEFAULT, 'Pavlo', 'Favur', 91.499, '2001-06-14', '2018-09-01', 'VK1232212', 'Pavlo.Favur.2018@lpnu.ua', 'Lviv', 3, 2);

INSERT INTO `city` (`name`, `region_name`) VALUES ('Lviv', 'Lviv region');
INSERT INTO `city` (`name`, `region_name`) VALUES ('Uzhhorod', 'Transcarpathian region');
INSERT INTO `city` (`name`, `region_name`) VALUES ('Chernivtsi', 'Chernivtsi region');
INSERT INTO `city` (`name`, `region_name`) VALUES ('Ivano-Frankivsk', 'Ivano-Frankivsk region');
INSERT INTO `city` (`name`, `region_name`) VALUES ('Kyiv', 'Kyiv region');

INSERT INTO `region` (`name`, `code`) VALUES ('Lviv region', 'Lv001');
INSERT INTO `region` (`name`, `code`) VALUES ('Transcarpathian region', 'Tr001');
INSERT INTO `region` (`name`, `code`) VALUES ('Chernivtsi region', 'Ch001');
INSERT INTO `region` (`name`, `code`) VALUES ('Ivano-Frankivsk region', 'Iv001');
INSERT INTO `region` (`name`, `code`) VALUES ('Kyiv region', 'Ky001');

INSERT INTO `group` (`id`, `name`, `number`, `entrance_year`) VALUES (DEFAULT, 'IR', 21, 2018);
INSERT INTO `group` (`id`, `name`, `number`, `entrance_year`) VALUES (DEFAULT, 'IR', 22, 2018);
INSERT INTO `group` (`id`, `name`, `number`, `entrance_year`) VALUES (DEFAULT, 'IR', 23, 2018);pavlo
INSERT INTO `group` (`id`, `name`, `number`, `entrance_year`) VALUES (DEFAULT, 'IR', 32, 2017);

INSERT INTO `graduated_secondary_school` (`id`, `name`, `headmaster_name`, `headmaster_phone`, `city_name`) VALUES (DEFAULT, 'Uzhhorodska N11', 'Peter Ven', 380665558784, 'Uzhhorod');
INSERT INTO `graduated_secondary_school` (`id`, `name`, `headmaster_name`, `headmaster_phone`, `city_name`) VALUES (DEFAULT, 'Lvivska N43', 'Semuel Lavner', 380678879421, 'Lviv');
INSERT INTO `graduated_secondary_school` (`id`, `name`, `headmaster_name`, `headmaster_phone`, `city_name`) VALUES (DEFAULT, 'Kyivska N24', 'Andrii Storwell', 380976842325, 'Kyiv');
INSERT INTO `graduated_secondary_school` (`id`, `name`, `headmaster_name`, `headmaster_phone`, `city_name`) VALUES (DEFAULT, 'Ivano-Frankivska N4', 'Vasyl Levit', 380956645668, 'Ivano-Frankivsk');
INSERT INTO `graduated_secondary_school` (`id`, `name`, `headmaster_name`, `headmaster_phone`, `city_name`) VALUES (DEFAULT, 'Chernivetska N7', 'Pavlo Dunai', 380661238784, 'Chernivtsi');

INSERT INTO `debt` (`id`, `subject`) VALUES (DEFAULT, 'Math Analysis');
INSERT INTO `debt` (`id`, `subject`) VALUES (DEFAULT, 'Physics');
INSERT INTO `debt` (`id`, `subject`) VALUES (DEFAULT, 'Programming part 2');
INSERT INTO `debt` (`id`, `subject`) VALUES (DEFAULT, 'English');

INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (3, 2);
INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (5, 1);
INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (2, 3);
INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (2, 4);
INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (4, 1);
INSERT INTO `student_has_debt` (`student_id`, `debt_id`) VALUES (4, 2);

COMMIT;
