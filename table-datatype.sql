--table create
CREATE TYPE genderEnum AS ENUM ('male', 'female');
CREATE TABLE "user" (
    id SERIAL,
    name VARCHAR(50), -- highest 50 char
    bio TEXT,
    images JSON,
    section CHAR(1), --fix 1
    gender genderEnum,
    age INT,
    height NUMERIC(10,2), -- DECIMAL and highest float to 2
    email VARCHAR(50) ,
    phone VARCHAR(50) ,
    married BOOLEAN ,
    created_on TIMESTAMP ,
    updated_on TIMESTAMP 
);

-- delete table
DROP TABLE student_new_name;


-- remove all row from table
TRUNCATE TABLE student_new_name;