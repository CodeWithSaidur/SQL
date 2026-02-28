-- Create Database
CREATE DATABASE xyz;

-- Select Database
USE xyz;

-- Create Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(255),
    salary INT
);

-- Insert Records
INSERT INTO Employee (id, name, salary)
VALUES 
(1, 'ADAM', 25000),
(2, 'BOB', 25000),
(3, 'OLY', 25000);

-- View Data
SELECT * FROM employee;