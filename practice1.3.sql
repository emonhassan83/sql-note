# PRACTICE WEEK

# Q-01. Determine the third highest salary and which employee receives it?
# approch - 1.1: use desc
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1 
OFFSET 2;

# approch- 1.2: use distinct
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 2,1
);


# Q-02: Determine the third lowest salary and which employee receives it?
# approch -2.1: use asc
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary ASC
LIMIT 2,1;

# approch-2.2: use distinc
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary ASC
    LIMIT 2,1
);

# Q-03: Which employee has been hired after Steven?
SELECT hire_date
FROM employees
WHERE first_name='Steven';

# Q-04: With Common Table Expression (CTE) solve Question 1 & 2
WITH SalaryRank AS
(
SELECT first_name,last_name,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
FROM employees
)

SELECT *
FROM SalaryRank
WHERE rnk=3;


WITH SalaryRank AS
(
SELECT first_name,last_name,salary,
DENSE_RANK() OVER(ORDER BY salary ASC) AS rnk
FROM employees
)

SELECT *
FROM SalaryRank
WHERE rnk=3;