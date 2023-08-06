
-- change name of table
ALTER TABLE student_new_name RENAME TO students;

-- change column name
ALTER TABLE students RENAME COLUMN name TO full_name;


-- add column
ALTER TABLE customers ADD COLUMN address VARCHAR(50);

-- change  constraints
ALTER TABLE customers ALTER COLUMN address SET DEFAULT 'dhaka';
ALTER TABLE customers ALTER COLUMN address DROP DEFAULT;
ALTER TABLE customers ALTER COLUMN address SET NOT NULL;
ALTER TABLE customers ADD CONSTRAINT uniqueDRop UNIQUE(address);
ALTER TABLE customers DROP CONSTRAINT uniqueDRop;

-- change colum data type
ALTER TABLE student_new_name ALTER COLUMN address SET DATA TYPE TEXT;

-- delete column
ALTER TABLE student_new_name DROP COLUMN address;