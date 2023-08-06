

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
);

-- delete table
DROP TABLE student_new_name;


-- remove all row from table
TRUNCATE TABLE student_new_name;