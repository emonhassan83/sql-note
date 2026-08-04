# practice 2
CREATE TABLE Employee (
    EmpId INT NOT NULL,
    EmpName VARCHAR(100) NOT NULL,
    JoiningYear YEAR NOT NULL,
    Birthday DATE NOT NULL,
    Designation VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL CHECK (Salary > 0),

    PRIMARY KEY (EmpId),

    CHECK (Birthday <= '2000-12-31'),
    CHECK (JoiningYear >= 1980)
);

# insert values
INSERT INTO Employee
VALUES
(101, 'Rahim', 2022, '1998-05-10', 'Software Engineer', 50000);

# Composite Primary Key
CREATE TABLE EmployeeProject (
    EmpId INT,
    ProjectId INT,
    AssignedDate DATE,

    PRIMARY KEY (EmpId, ProjectId)
);