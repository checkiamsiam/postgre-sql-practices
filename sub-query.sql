SELECT * FROM customers WHERE age = (
    SELECT MAX(age) FROM customers
);

SELECT * FROM customers WHERE age IN (
    SELECT age FROM customers
);


SELECT min_age , max_age FROM (
    SELECT MIN(age) AS min_age, MAX(age) AS max_age FROM customers
) AS age_range;


SELECT age as own_age , (
    SELECT MAX(age) FROM customers
) AS max_age  FROM customers;



-- keep IN mind that what type of value subquery returns