# create database
CREATE DATABASE programminghero;

# select database
USE programminghero;

# create table
CREATE TABLE Student(
	Roll CHAR(4) PRIMARY KEY,
    Name VARCHAR(50),
    Marks DOUBLE
);

# insert table data
INSERT INTO Student(Roll, Name) 
	   VALUES(2, "Rahim");
 
# disabled safe mode
SET SQL_SAFE_UPDATES = 0;

 # update table
UPDATE Student
	SET Name = "Jhon Doe"
      WHERE Roll = 1;

# delete a row
DELETE FROM Student
	WHERE Roll = 1;

# enabled safe mode
SET SQL_SAFE_UPDATES = 1;

# delete table
DROP TABLE Student;