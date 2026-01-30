# PHASE 1: SQL BASICS

- [x] SQL Intro  
- SQL is a standard language used to store, retrieve, update, and manage data in relational databases.

```sql
-- SQL is used to manage relational databases
````

* [x] SQL Syntax
* SQL syntax defines the rules and structure for writing valid SQL queries.

```sql
SELECT column_name FROM table_name;
```

* [x] SQL Data Types
* Data types specify what kind of data a column can store.

```sql
INT, VARCHAR(100), DATE, FLOAT, BOOLEAN
```

* [x] SQL Comments
* Comments are used to explain SQL code and are ignored during execution.

```sql
-- Single line comment
/* Multi-line comment */
```

* [x] SQL Operators
* Operators perform comparison and logical operations in SQL.

```sql
=, !=, >, <, >=, <=, AND, OR
```

---

# PHASE 2: DATABASE & TABLE

* [x] SQL Create Database
* Creates a new database to store data.

```sql
CREATE DATABASE School;
```

* [x] SQL Drop Database
* Deletes an existing database permanently.

```sql
DROP DATABASE School;
```

* [x] SQL Backup Database
* Creates a backup copy of the database.

```sql
mysqldump -u user -p School > backup.sql
```

* [x] SQL Create Table
* Creates a new table with defined columns.

```sql
CREATE TABLE students (
  id INT,
  name VARCHAR(100)
);
```

* [x] SQL Drop Table
* Deletes a table and its data.

```sql
DROP TABLE students;
```

* [ ] SQL Alter Table
* Modifies the structure of an existing table.

```sql
ALTER TABLE students ADD email VARCHAR(100);
```

---

# PHASE 3: CONSTRAINTS

* [ ] NOT NULL
* Ensures a column cannot contain NULL values.

```sql
name VARCHAR(100) NOT NULL
```

* [ ] UNIQUE
* Ensures all values in a column are unique.

```sql
email VARCHAR(100) UNIQUE
```

* [ ] PRIMARY KEY
* Uniquely identifies each record in a table.

```sql
id INT PRIMARY KEY
```

* [ ] FOREIGN KEY
* Creates a relationship between two tables.

```sql
FOREIGN KEY (class_id) REFERENCES classes(id)
```

* [ ] CHECK
* Restricts values based on a condition.

```sql
age INT CHECK (age >= 5)
```

* [ ] DEFAULT
* Sets a default value for a column.

```sql
status VARCHAR(20) DEFAULT 'Active'
```

* [ ] INDEX
* Improves query performance.

```sql
CREATE INDEX idx_name ON students(name);
```

* [ ] AUTO INCREMENT
* Automatically generates sequential values.

```sql
id INT AUTO_INCREMENT
```

---

# PHASE 4: SELECT QUERIES

* [ ] SELECT
* Retrieves data from a table.

```sql
SELECT * FROM students;
```

* [ ] SELECT DISTINCT
* Returns only unique values.

```sql
SELECT DISTINCT class FROM students;
```

* [ ] WHERE
* Filters records based on a condition.

```sql
SELECT * FROM students WHERE class = '10';
```

* [ ] AND
* Combines multiple conditions.

```sql
SELECT * FROM students WHERE class = '10' AND section = 'A';
```

* [ ] OR
* Returns records matching any condition.

```sql
SELECT * FROM students WHERE class = '9' OR class = '10';
```

* [ ] NOT
* Excludes matching records.

```sql
SELECT * FROM students WHERE NOT class = '10';
```

* [ ] ORDER BY
* Sorts query results.

```sql
SELECT * FROM students ORDER BY name ASC;
```

* [ ] NULL VALUES
* Finds records with NULL values.

```sql
SELECT * FROM students WHERE phone IS NULL;
```

* [ ] LIMIT / TOP
* Limits the number of records returned.

```sql
SELECT * FROM students LIMIT 5;
```

---

# PHASE 5: DATA MODIFICATION

* [ ] INSERT INTO
* Adds new records to a table.

```sql
INSERT INTO students(name, class)
VALUES ('Rahul', '10');
```

* [ ] UPDATE
* Updates existing records.

```sql
UPDATE students SET class = '9' WHERE id = 1;
```

* [ ] DELETE
* Removes records from a table.

```sql
DELETE FROM students WHERE id = 1;
```

---

# PHASE 6: FILTERING

* [ ] LIKE
* Searches using patterns.

```sql
SELECT * FROM students WHERE name LIKE 'A%';
```

* [ ] WILDCARDS
* Special characters for pattern matching.

```sql
'A%'  '%a'  '_a%'
```

* [ ] IN
* Matches values from a list.

```sql
SELECT * FROM students WHERE class IN ('9', '10');
```

* [ ] BETWEEN
* Filters values within a range.

```sql
SELECT * FROM students WHERE age BETWEEN 14 AND 16;
```

* [ ] ALIASES
* Assigns temporary names.

```sql
SELECT name AS student_name FROM students;
```

* [ ] CASE
* Adds conditional logic.

```sql
SELECT name,
CASE
  WHEN age >= 18 THEN 'Adult'
  ELSE 'Minor'
END AS status
FROM students;
```

* [ ] NULL FUNCTIONS
* Replaces NULL values.

```sql
SELECT IFNULL(phone, 'N/A') FROM students;
```

---

# PHASE 7: AGGREGATE FUNCTIONS

* [ ] COUNT
* Counts total rows.

```sql
SELECT COUNT(*) FROM students;
```

* [ ] MIN / MAX
* Finds smallest and largest values.

```sql
SELECT MIN(age), MAX(age) FROM students;
```

* [ ] SUM
* Adds numeric values.

```sql
SELECT SUM(age) FROM students;
```

* [ ] AVG
* Calculates average.

```sql
SELECT AVG(age) FROM students;
```

* [ ] GROUP BY
* Groups rows for aggregation.

```sql
SELECT class, COUNT(*) FROM students GROUP BY class;
```

* [ ] HAVING
* Filters grouped results.

```sql
SELECT class, COUNT(*)
FROM students
GROUP BY class
HAVING COUNT(*) > 5;
```

---

# PHASE 8: JOINS

* [ ] INNER JOIN
* Returns matching rows from both tables.

```sql
SELECT s.name, c.class_name
FROM students s
INNER JOIN classes c ON s.class_id = c.id;
```

* [ ] LEFT JOIN
* Returns all rows from left table.

```sql
SELECT *
FROM students s
LEFT JOIN classes c ON s.class_id = c.id;
```

* [ ] RIGHT JOIN
* Returns all rows from right table.

```sql
SELECT *
FROM students s
RIGHT JOIN classes c ON s.class_id = c.id;
```

* [ ] FULL JOIN
* Returns all rows from both tables.

```sql
SELECT * FROM A
LEFT JOIN B ON A.id = B.id
UNION
SELECT * FROM A
RIGHT JOIN B ON A.id = B.id;
```

* [ ] SELF JOIN
* Joins a table with itself.

```sql
SELECT A.name, B.name
FROM students A, students B
WHERE A.id <> B.id;
```

---

# PHASE 9: SUBQUERIES & SETS

* [ ] EXISTS
* Checks if a subquery returns data.

```sql
SELECT * FROM students s
WHERE EXISTS (
  SELECT 1 FROM marks m WHERE m.student_id = s.id
);
```

* [ ] ANY / ALL
* Compares values with subquery results.

```sql
SELECT * FROM students
WHERE age > ANY (SELECT age FROM students WHERE class='10');
```

* [ ] UNION
* Combines results without duplicates.

```sql
SELECT name FROM students_2023
UNION
SELECT name FROM students_2024;
```

* [ ] UNION ALL
* Combines results with duplicates.

```sql
SELECT name FROM students_2023
UNION ALL
SELECT name FROM students_2024;
```

---

# PHASE 10: DATA TRANSFER

* [ ] SELECT INTO
* Copies data into a new table.

```sql
SELECT * INTO backup_students FROM students;
```

* [ ] INSERT INTO SELECT
* Copies data into an existing table.

```sql
INSERT INTO alumni(name)
SELECT name FROM students WHERE status='Passed';
```

---

# PHASE 11: ADVANCED

* [ ] VIEWS
* Virtual tables created from queries.

```sql
CREATE VIEW active_students AS
SELECT * FROM students WHERE status='Active';
```

* [ ] STORED PROCEDURES
* Reusable SQL logic stored in the database.

```sql
CREATE PROCEDURE GetStudents()
BEGIN
  SELECT * FROM students;
END;
```

* [ ] SQL Injection
* A security attack using malicious SQL input.

```sql
SELECT * FROM users WHERE name = '' OR '1'='1';
```

---

# PHASE 12: DATES & HOSTING

* [ ] SQL Dates
* Functions used to handle date and time.

```sql
SELECT CURDATE();
```

* [ ] SQL Hosting
* Running databases on cloud platforms.

```sql
AWS RDS / Azure SQL / PlanetScale
```