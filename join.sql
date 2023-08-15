
--- INNER JOIN ----
--- returns Only matching rows from both tables ----
SELECT * FROM students INNER JOIN users ON users.id = students.userid;

SELECT * FROM students s INNER JOIN users u ON u.id = s.userid;

SELECT stuid , class , userid , name , email , adress FROM students s INNER JOIN users u ON u.id = s.userid;

--- Left JOIN ----
--- give priority to left table (return all from main table if not match that will set null on that fields) ----

SELECT * FROM students LEFT JOIN users ON users.id = students.userid;

--- right JOIN ---- 
--- give priority to right table (return all from right table if not match that will set null on that fields) ----

SELECT * FROM students RIGHT JOIN users ON users.id = students.userid;


--- full JOIN ---
--- return all rows from both tables (if not match that will set null on that fields) ----

SELECT * FROM students FULL JOIN users ON users.id = students.userid;


--- NATURAL JOIN ---
--- merge common fields ----
SELECT * FROM students NATURAL JOIN users ;


--- Cross JOIN ---
--- unwind , make record for each left table to all right table ----
SELECT * FROM students CROSS JOIN users;


---- pre production ----
---- pre works ----
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT ,
  email TEXT UNIQUE NOT NULL,
  adress TEXT
);

INSERT INTO users("id", "name", "email" , "adress") VALUES
(DEFAULT , 'John Doe', 'joh@gail', '1234'),
(DEFAULT , 'Jane Doe', 'jan@gail', '1234'),
(DEFAULT , 'John Smith', 'johS@gail', '1234');

CREATE TABLE IF NOT EXISTS students (
  stuid SERIAL PRIMARY KEY,
  class TEXT ,
  userid INTEGER REFERENCES users(id)
);

INSERT INTO students("stuid", "class", "userid") VALUES
(DEFAULT , 'A', 1),
(DEFAULT , 'B', 2),
(DEFAULT , 'C', 3),
(DEFAULT , 'd', NULL);



SELECT * FROM users;
SELECT * FROM students;
