USE dummydb;

SELECT * FROM countries;
SELECT * FROM departments;
SELECT * FROM employees;

# Query Practices 

-- - Functions: 
--       - UPPER, LOWER, ABS
--       - DEGREE, RADIANS, COS, ACOS, SIN
--       - CEIL, FLOOR, DIV, EXP
--       - GREATEST, LEAST
--       - LN, LOG, LOGIO, LOG2
--       - MOD, PI, POW, RAND, ROUND, SQRT,  TRUNCATE

# GROUP FUNCTION (MAX, MIN, COUNT, SUM, AVG)
SELECT MAX(SALARY) FROM EMPLOYEES;
SELECT MIN(SALARY) FROM EMPLOYEES;
SELECT AVG(SALARY) FROM EMPLOYEES;
SELECT COUNT(SALARY) FROM EMPLOYEES;

# GROUP BY, HAVING
# find depertment id wise max salary
SELECT DEPARTMENT_ID, MAX(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

# find depertment id wise max salary at list  gether than 5000
SELECT DEPARTMENT_ID, MAX(SALARY) 
FROM EMPLOYEES
WHERE DEPARTMENT_ID != 20
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY) > 5000;

-- ALTER TABLE QUERY(ALTER, DROP)
CREATE TABLE Student (
    StudentId INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Age INT
);

INSERT INTO Student
VALUES
(101, 'Rahim', 'CSE', 22),
(102, 'Karim', 'EEE', 21),
(103, 'Fatema', 'BBA', 23);

# Add a New Column
ALTER TABLE Student
ADD Email VARCHAR(100);

# Add multiple New Column
ALTER TABLE Student
ADD Phone VARCHAR(20),
ADD CGPA DECIMAL(3,2);

# Modify a Column Data Type
ALTER TABLE Student
MODIFY Department VARCHAR(100);

# Rename a Column
ALTER TABLE Student
RENAME COLUMN StudentName TO FullName;

# Drop a Column
ALTER TABLE Student
DROP COLUMN Phone;

SELECT * FROM Student;