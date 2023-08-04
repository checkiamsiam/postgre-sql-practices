-- Active: 1691169594950@@127.0.0.1@5432@testdb@public
--table create
CREATE TABLE student(
    id SERIAL,
    name VARCHAR(50),
    bio TEXT,
    images JSON,
    section CHAR(1),
    age INT,
    height FLOAT,
    email VARCHAR(50) ,
    phone VARCHAR(50) ,
    married BOOLEAN ,
    created_on TIMESTAMP ,
    updated_on TIMESTAMP 
)


-- change name of table
-- ALTER TABLE student RENAME TO student_new_name;


-- add column
-- ALTER TABLE student_new_name ADD COLUMN address VARCHAR(50);

-- change column type
-- ALTER TABLE student_new_name ALTER COLUMN address SET DATA TYPE TEXT;

-- delete column
-- ALTER TABLE student_new_name DROP COLUMN address;

-- delete table
-- DROP TABLE student_new_name;