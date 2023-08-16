SELECT * from customers;


CREATE INDEX byage ON customers(age);

EXPLAIN ANALYZE SELECT * from customers WHERE age = 19;