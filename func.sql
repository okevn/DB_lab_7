USE db_lab7;
SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION IF EXISTS findMaxBirthYearOfStudent;
DROP FUNCTION IF EXISTS findBetweenCityAndStudentCityByKey;

DELIMITER //
CREATE FUNCTION findMaxBirthYearOfStudent()
RETURNS DATE
BEGIN
RETURN (SELECT MAX(birthday) FROM `student`);
END //


DELIMITER //
CREATE FUNCTION findBetweenCityAndStudentCityByKey(cityID VARCHAR(45))
RETURNS VARCHAR(45)
BEGIN
RETURN (SELECT name FROM `city` WHERE name=cityID);
END //

SELECT id, name, surname, rating, birthday, entrance_date, student_card_number,
 email, city_name, group_id, graduated_secondary_school_id
FROM student
WHERE birthday = findMaxBirthYearOfStudent();

SELECT id, name, surname, rating, birthday, entrance_date, student_card_number, 
	email, city_name, group_id, graduated_secondary_school_id,
    findBetweenCityAndStudentCityByKey(city_name) AS city_field
FROM `student`;