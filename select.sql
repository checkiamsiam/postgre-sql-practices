
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