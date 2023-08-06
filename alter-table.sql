
-- change name of table
ALTER TABLE student_new_name RENAME TO students;

-- change column name
ALTER TABLE students RENAME COLUMN name TO full_name;


-- add column
ALTER TABLE student_new_name ADD COLUMN address VARCHAR(50);

-- change column type
ALTER TABLE student_new_name ALTER COLUMN address SET DATA TYPE TEXT;

-- delete column
ALTER TABLE student_new_name DROP COLUMN address;