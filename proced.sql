USE db_lab7;

DROP PROCEDURE IF EXISTS InsertIntoGroup;
DROP PROCEDURE IF EXISTS CreateTableCursor;

/* Забезпечити параметризовану вставку нових значень у таблицю Групи. */

DELIMITER //
CREATE PROCEDURE InsertIntoGroup(
	IN id int,
    IN name varchar(45),
    IN number int,
    IN entrance_year int
)
BEGIN
	INSERT INTO `group`(`id`, `name`, `number`, `entrance_year`)
    VALUE(id, name, number, entrance_year);
END //
DELIMITER ;

/*


Використовуючи курсор, забезпечити динамічне створення 
таблиці, що містить стовпці з іменами з таблиці 
Студенти,. Тип стовпців довільний


*/

DELIMITER //
CREATE PROCEDURE CreateTableCursor()
BEGIN
	DECLARE done int DEFAULT false;
	DECLARE fname char(30);
	DECLARE eml_cursor CURSOR FOR SELECT `name` FROM student;
	DECLARE CONTINUE HANDLER
	FOR NOT FOUND SET done = true;
	OPEN eml_cursor;
	myLoop: LOOP
		FETCH eml_cursor INTO fname;
		IF done=true THEN LEAVE myLoop;
		END IF;
		SET @temp_query = CONCAT('CREATE TABLE ', fname, '(p1 INT PRIMARY KEY, p2 VARCHAR(10) NOT NULL, p3 VARCHAR(5) NULL);');
		PREPARE myquery FROM @temp_query;
		EXECUTE myquery;
		DEALLOCATE PREPARE myquery;
	END LOOP;
	CLOSE eml_cursor;
END //
DELIMITER ;