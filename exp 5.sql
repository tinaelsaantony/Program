/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
#1
CREATE TABLE CLASS(
    `id` INT PRIMARY KEY NOT NULL,
    `name` VARCHAR(30)  NOT NULL);
#2
INSERT INTO CLASS(`id`,  `name`) 
VALUES (1, 'RAHUL');
SELECT*FROM CLASS;
#3
SELECT*FROM CLASS;
#4
START TRANSACTION;
UPDATE CLASS SET name='GEETHU' WHERE id= 1;
SAVEPOINT A;
ROLLBACK TO A;
SELECT*FROM CLASS;
INSERT INTO CLASS VALUES (2, 'ROHIT');
SAVEPOINT B;
ROLLBACK TO B;
SELECT*FROM CLASS;
INSERT INTO CLASS VALUES (3, 'RANBEER');
SAVEPOINT C;
ROLLBACK TO C;
SELECT*FROM CLASS;
INSERT INTO CLASS VALUES (4, 'PRIYANKA');
SAVEPOINT D;
ROLLBACK TO D;
SELECT*FROM CLASS;
INSERT INTO CLASS VALUES (5, 'NICK');
SAVEPOINT E;
SELECT*FROM CLASS;
ROLLBACK TO E;
COMMIT;