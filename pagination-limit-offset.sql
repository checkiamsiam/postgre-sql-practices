--page 1
SELECT * FROM customers LIMIT 3;

--page 2
SELECT * FROM customers LIMIT 3 OFFSET 3;

--page 3
SELECT * FROM customers LIMIT 3 OFFSET 6;