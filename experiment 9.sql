/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('ar69','Aravind R','2000-02-02','CTO',190000.78),
('ku12','Kiran U','2000-01-12','CEO',185000.78),
('sv13','V Sam','1998-08-02','Clerk',59000.78),
('ask1','A Siraj','1969-04-20','Auditor',59000.18);

SELECT * FROM Employee ORDER BY name DESC;

CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'thrissur',290000.25),
(1990002,'thrissur',291233.22),
(1990003,'kollam',123570.1),
(1990004,'thrissur',2239083.78),
(1990005,'kannur',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;