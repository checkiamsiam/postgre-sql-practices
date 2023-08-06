-- Active: 1691335940080@@127.0.0.1@5432@testdb
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  studentID INT REFERENCES customers(id), -- foreign key
  username TEXT NOT NULL,
  email TEXT NOT NULL,
  age INT CHECK (age > 18 AND age < 100),
  married BOOLEAN DEFAULT false,
  UNIQUE(username, email) -- in one line
  -- for composite key
  -- PRIMARY KEY(username, email)
);