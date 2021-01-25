/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


CREATE TABLE EMPLOYEE (
CODE VARCHAR(10),
NAME CHAR(20),
DOB DATE NOT NULL,
DESIGNATION CHAR(25),
SALARY INT
);
INSERT INTO EMPLOYEE VALUES ('E69','AVINEK','1990-06-14','CLERK','40000');
INSERT INTO EMPLOYEE VALUES ('E37','ARJUN','1989-12-08','PROJECT DESGINER','60000');
INSERT INTO EMPLOYEE VALUES ('E93','JAYALEKSHMI','1992-02-18','SALES MANAGER','50000');
INSERT INTO EMPLOYEE VALUES ('E08','AMBADI','1992-04-22','CLERK','40000');
INSERT INTO EMPLOYEE VALUES ('E29','DEEPIKA','1984-09-26','ACCOUNTANT','48000');

DELIMITER $$
CREATE TRIGGER INSERT_PREVENT
BEFORE INSERT
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER UPDATE_PREVENT
BEFORE UPDATE
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER DELETE_PREVENT
BEFORE DELETE
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;