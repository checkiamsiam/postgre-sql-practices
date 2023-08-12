
--- SELECT columns
--- FROM table_name 
--- WHERE condition 
--- ORDER BY column_name ASC/DESC 
--- LIMIT number OFFSET number;
SELECT * FROM customers;

SELECT * FROM customers WHERE id = 1;

SELECT username , email FROM customers WHERE id = 1;

SELECT * FROM customers WHERE id > 1 AND id <= 4;

SELECT * FROM customers WHERE id = 1 OR id = 4;


SELECT * FROM customers WHERE id <> 1; -- <> --> not equal


--IN , NOT IN , BETWEEN , NOT BETWEEN , LIKE , NOT LIKE , IS NULL , IS NOT NULL

SELECT * FROM customers WHERE id IN (1,2,3);

SELECT * FROM customers WHERE id NOT IN (1,2,3);


SELECT * FROM customers WHERE id BETWEEN 1 AND 3;


SELECT * FROM customers WHERE id NOT BETWEEN 1 AND 3;


SELECT * FROM customers WHERE username LIKE 'J%';

SELECT * FROM customers WHERE username LIKE '%j';


SELECT * FROM customers WHERE username LIKE '%joh%';

SELECT * FROM customers WHERE username LIKE '_r_n%';

SELECT * FROM customers WHERE username NOT LIKE 'J%';


SELECT * FROM customers WHERE username IS NULL;


SELECT * FROM customers WHERE username IS NOT NULL;