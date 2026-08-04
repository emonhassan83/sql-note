# Assignment -1

# Create tables
CREATE TABLE Student (
    Roll CHAR(4) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60) UNIQUE NOT NULL,
    Age INT
);

CREATE TABLE Library (
    Book_Name VARCHAR(100) PRIMARY KEY,
    Who_Hired CHAR(4),
    
    FOREIGN KEY (Who_Hired) REFERENCES Student(Roll)
);

CREATE TABLE Fees (
    Student_Roll CHAR(4) ,
    Total_Fees DECIMAL NOT NULL,
    
    FOREIGN KEY (Student_Roll) REFERENCES Student(Roll)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age INT,
    Department VARCHAR(100)
);

# insert data
INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Department)
VALUES
    (1, 'John', 'Doe', 28, 'Sales'),
    (2, 'Jane', 'Smith', 32, 'Marketing'),
    (3, 'Michael', 'Johnson', 35, 'Finance'),
    (4, 'Sarah', 'Brown', 30, 'HR'),
    (5, 'William', 'Davis', 25, 'Engineering'),
    (6, 'Emily', 'Wilson', 28, 'Sales'),
    (7, 'Robert', 'Lee', 33, 'Marketing'),
    (8, 'Laura', 'Hall', 29, 'Finance'),
    (9, 'Thomas', 'White', 31, 'HR'),
    (10, 'Olivia', 'Clark', 27, 'Engineering');
 
# show the distinct department names
SELECT DISTINCT Department FROM Employee;

# LastNames of the employees sorted by  descending ages
SELECT LastName FROM Employee 
	ORDER BY Age DESC;

# find LastName whose age is greater than 30 and works in Marketing department
SELECT LastName FROM Employee 
	WHERE Age > 30 
	AND Department = 'Marketing';

# get employees whose names includes ‘son’
SELECT * FROM Employee 
	WHERE FirstName LIKE '%son%' 
    OR LastName LIKE '%son%';

# get the engineers
SELECT * FROM Employee 
	WHERE Department = 'Engineering';
    
# select all the employees
SELECT * FROM Employee;