# PHASE 1: SQL BASICS

- [X] SQL Intro

```sql
-- SQL is used to manage relational databases
```

- [x] SQL Syntax

```sql
SELECT column_name FROM table_name;
```

- [ ] SQL Data Types

```sql
INT, VARCHAR(100), DATE, FLOAT, BOOLEAN
```

- [ ] SQL Comments

```sql
-- Single line comment
/* Multi-line comment */
```

- [ ] SQL Operators

```sql
=, !=, >, <, >=, <=, AND, OR
```

---

# PHASE 2: DATABASE & TABLE

- [ ] SQL Create DB

```sql
CREATE DATABASE School;
```

- [ ] SQL Drop DB

```sql
DROP DATABASE School;
```

- [ ] SQL Backup DB

```sql
-- MySQL backup (CLI)
mysqldump -u user -p School > backup.sql
```

- [ ] SQL Create Table

```sql
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(100)
);
```

- [ ] SQL Drop Table

```sql
DROP TABLE students;
```

- [ ] SQL Alter Table

```sql
ALTER TABLE students ADD email VARCHAR(100);
```

---

# PHASE 3: CONSTRAINTS

- [ ] NOT NULL

```sql
name VARCHAR(100) NOT NULL
```

- [ ] UNIQUE

```sql
email VARCHAR(100) UNIQUE
```

- [ ] PRIMARY KEY

```sql
id INT PRIMARY KEY
```

- [ ] FOREIGN KEY

```sql
FOREIGN KEY (class_id) REFERENCES classes(id)
```

- [ ] CHECK

```sql
age INT CHECK (age >= 5)
```

- [ ] DEFAULT

```sql
status VARCHAR(20) DEFAULT 'Active'
```

- [ ] INDEX

```sql
CREATE INDEX idx_name ON students(name);
```

- [ ] AUTO INCREMENT

```sql
id INT AUTO_INCREMENT
```

---

# PHASE 4: SELECT QUERIES

- [ ] SELECT

```sql
SELECT * FROM students;
```

- [ ] SELECT DISTINCT

```sql
SELECT DISTINCT class FROM students;
```

- [ ] WHERE

```sql
SELECT * FROM students WHERE class = '10';
```

- [ ] AND

```sql
SELECT * FROM students WHERE class = '10' AND section = 'A';
```

- [ ] OR

```sql
SELECT * FROM students WHERE class = '9' OR class = '10';
```

- [ ] NOT

```sql
SELECT * FROM students WHERE NOT class = '10';
```

- [ ] ORDER BY

```sql
SELECT * FROM students ORDER BY name ASC;
```

- [ ] NULL VALUES

```sql
SELECT * FROM students WHERE phone IS NULL;
```

- [ ] SELECT TOP / LIMIT

```sql
SELECT * FROM students LIMIT 5;
```

---

# PHASE 5: DATA MODIFICATION

- [ ] INSERT INTO

```sql
INSERT INTO students(name, class)
VALUES ('Rahul', '10');
```

- [ ] UPDATE

```sql
UPDATE students SET class = '9' WHERE id = 1;
```

- [ ] DELETE

```sql
DELETE FROM students WHERE id = 1;
```

---

# PHASE 6: FILTERING

- [ ] LIKE

```sql
SELECT * FROM students WHERE name LIKE 'A%';
```

- [ ] WILDCARDS

```sql
'A%'  '%a'  '_a%'
```

- [ ] IN

```sql
SELECT * FROM students WHERE class IN ('9', '10');
```

- [ ] BETWEEN

```sql
SELECT * FROM students WHERE age BETWEEN 14 AND 16;
```

- [ ] ALIASES

```sql
SELECT name AS student_name FROM students;
```

- [ ] CASE

```sql
SELECT name,
CASE
  WHEN age >= 18 THEN 'Adult'
  ELSE 'Minor'
END AS status
FROM students;
```

- [ ] NULL FUNCTIONS

```sql
SELECT IFNULL(phone, 'N/A') FROM students;
```

---

# PHASE 7: AGGREGATE FUNCTIONS

- [ ] COUNT

```sql
SELECT COUNT(*) FROM students;
```

- [ ] MIN / MAX

```sql
SELECT MIN(age), MAX(age) FROM students;
```

- [ ] SUM

```sql
SELECT SUM(age) FROM students;
```

- [ ] AVG

```sql
SELECT AVG(age) FROM students;
```

- [ ] GROUP BY

```sql
SELECT class, COUNT(*) FROM students GROUP BY class;
```

- [ ] HAVING

```sql
SELECT class, COUNT(*)
FROM students
GROUP BY class
HAVING COUNT(*) > 5;
```

---

# PHASE 8: JOINS

- [ ] INNER JOIN

```sql
SELECT s.name, c.class_name
FROM students s
INNER JOIN classes c ON s.class_id = c.id;
```

- [ ] LEFT JOIN

```sql
SELECT * FROM students s
LEFT JOIN classes c ON s.class_id = c.id;
```

- [ ] RIGHT JOIN

```sql
SELECT * FROM students s
RIGHT JOIN classes c ON s.class_id = c.id;
```

- [ ] FULL JOIN (Simulated in MySQL)

```sql
SELECT * FROM A
LEFT JOIN B ON A.id = B.id
UNION
SELECT * FROM A
RIGHT JOIN B ON A.id = B.id;
```

- [ ] SELF JOIN

```sql
SELECT A.name, B.name
FROM students A, students B
WHERE A.id <> B.id;
```

---

# PHASE 9: SUBQUERIES & SETS

- [ ] EXISTS

```sql
SELECT * FROM students s
WHERE EXISTS (
  SELECT 1 FROM marks m WHERE m.student_id = s.id
);
```

- [ ] ANY / ALL

```sql
SELECT * FROM students
WHERE age > ANY (SELECT age FROM students WHERE class='10');
```

- [ ] UNION

```sql
SELECT name FROM students_2023
UNION
SELECT name FROM students_2024;
```

- [ ] UNION ALL

```sql
SELECT name FROM students_2023
UNION ALL
SELECT name FROM students_2024;
```

---

# PHASE 10: DATA TRANSFER

- [ ] SELECT INTO

```sql
SELECT * INTO backup_students FROM students;
```

- [ ] INSERT INTO SELECT

```sql
INSERT INTO alumni(name)
SELECT name FROM students WHERE status='Passed';
```

---

# PHASE 11: ADVANCED

- [ ] VIEWS

```sql
CREATE VIEW active_students AS
SELECT * FROM students WHERE status='Active';
```

- [ ] STORED PROCEDURES

```sql
CREATE PROCEDURE GetStudents()
BEGIN
  SELECT * FROM students;
END;
```

- [ ] SQL Injection (Unsafe)

```sql
SELECT * FROM users WHERE name = ' ' OR '1'='1';
```

---

# PHASE 12: DATES & HOSTING

- [ ] SQL Dates

```sql
SELECT CURDATE();
```

- [ ] SQL Hosting

```sql
-- Hosted DB: AWS RDS / Azure SQL / PlanetScale
```

---

Want Next?
And :- learn prisma orm || drizzle orm 😂
