/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
#1
CREATE TABLE STORE (
    `order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` VARCHAR(30) NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);
#2
INSERT INTO STORE (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ('1054', "BISCUIT", "1pkt", 23, 0, 23),('1001', "WHEAT", "1Kg", 51, 1, 50),('1007', "SUGAR", "1Kg", 10, 0, 10),('1014', "COCONUT OIL", "1ltr", 260, 5, 255),
('1019', "KITKAT", "1pkt", 40, 0, 60);
#3
SELECT * FROM STORE;
#4
SELECT MOD(price,9) FROM STORE;
#5
SELECT POWER(price,2) FROM STORE;
#6
SELECT ROUND(mrp DIV 7) FROM STORE;
