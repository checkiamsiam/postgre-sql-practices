CREATE VIEW see_view AS SELECT * FROM customers;

CREATE VIEW age_group AS SELECT age , count(*) as count FROM customers GROUP BY age;

-- use like a table
SELECT * FROM age_group;