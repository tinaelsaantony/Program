/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gm0121','Christina Antony','2000-10-05','General Manager',50000.25),
('pm2918','Julia Biju','1998-11-15','Product Manager',50000.50),
('cl0123','Richa Mary','1992-02-06','Clerk',25000),
('cl1234','Arjun Krishna','2001-02-05','Clerk',15000.75);

SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

SELECT MAX(salary) FROM Employee;

SELECT AVG(salary) FROM Employee;

SELECT MIN(salary) FROM Employee;

SELECT COUNT(*) FROM Employee;