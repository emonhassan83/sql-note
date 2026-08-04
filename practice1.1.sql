# Home Task(Module 2.5)
CREATE TABLE Employee(
EmployeedId CHAR(4) PRIMARY KEY, 
EmployeeName VARCHAR(50), 
EmployeeSalary DECIMAL, 
JoiningDate DATE
);

# insert 2 data 
INSERT INTO Employee (EmployeedId, EmployeeName, EmployeeSalary, JoiningDate) VALUES
('E001', 'Alice Johnson', 55000.00, '2022-03-15'),
('E002', 'Bob Smith', 62000.00, '2021-08-10');

# disable safe mode
SET SQL_SAFE_UPDATES = 0;

# update employee
UPDATE Employee
	SET EmployeeName = "Jhon Doe"
    WHERE EmployeedId = 'E001';

# delete employee
DELETE FROM Employee
	WHERE EmployeedId = 'E001';

# enabled safe mode
SET SQL_SAFE_UPDATES = 1;

# drop table
DROP TABLE Employee;