SELECT avg(age) as avg_age , min(age) as min_age  , max(age) as max_age , sum(age) as total FROM customers;


SELECT age , count(*) FROM customers GROUP BY customers.age;