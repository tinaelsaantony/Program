/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
CREATE TABLE store(
 order_no INT,
 code VARCHAR(10),
 item_name CHAR(10),
 quantity INT,
 price INT,
 discount VARCHAR(10),
 MRP int
 );
 
 INSERT INTO store VALUES
 (10,'C1','ITEM01',30,2000,'10%',1800),
  (20,'D1','ITEM02',41,4000,'5%',3800);
  
  SELECT * FROM store;
  
  CREATE VIEW available AS 
  SELECT item_name ,quantity FROM store;
  
  SELECT * FROM available;
  INSERT INTO store VALUES
  (25,'B1','ITEM03',30,5000,'24%',2000);

  SELECT * FROM store;
  SELECT * FROM available;
  DROP VIEW available;