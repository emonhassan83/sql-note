# Module 3. Table Query
CREATE TABLE Student
(
	Roll CHAR(4) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Email VARCHAR(60) UNIQUE,
	Age INT CHECK(Age > 10)
);

CREATE TABLE Student
(
	Roll CHAR(4),
	Name VARCHAR(50) NOT NULL,
	Email VARCHAR(60),
	Age INT CHECK(Age > 10),
    
	-- constraint
	PRIMARY KEY(Roll),
	UNIQUE(Email),
	CHECK(Age>10)
);

CREATE TABLE Student
(
	Roll CHAR(4),
	Name VARCHAR(50) NOT NULL,
	Email VARCHAR(60),
	Age INT CHECK(Age > 10),

	Constraint pk_rule PRIMARY KEY(Roll),
	Constraint unique_rule UNIQUE(Email),
	Constraint checking_rule CHECK(Age>10)
);

# insert data
INSERT INTO Student(Roll, Name, Email, Age) 
	VALUES('0001', 'Jhon', 'jhon@gmail.com', 11);

INSERT INTO Student(Roll, Name, Email, Age) 
	VALUES('0002', 'Jane', 'jane@gmail.com', 12);

# create table
CREATE TABLE Libary
(
BookName VARCHAR(50) PRIMARY KEY,
WhoHired_Roll CHAR(4),

-- add foreign key
FOREIGN KEY(WhoHired_Roll) REFERENCES Student(Roll)
);

CREATE TABLE Course
(
CourseName VARCHAR(10),
University VARCHAR(10),
Credit INT,

-- composite key
PRIMARY KEY(CourseName, University)
);

# select query
SELECT * FROM Student;

# delete table
DROP TABLE Student;