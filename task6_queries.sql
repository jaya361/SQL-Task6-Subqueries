
-- Create departments table
CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT
);

-- Create employees table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    dept_id INTEGER,
    salary INTEGER
);

-- Insert departments
INSERT INTO departments VALUES 
(1, 'HR'), 
(2, 'IT'), 
(3, 'Sales');

-- Insert employees
INSERT INTO employees VALUES 
(1, 'Alice', 1, 40000),
(2, 'Bob', 2, 60000),
(3, 'Charlie', 2, 55000),
(4, 'David', 3, 45000),
(5, 'Eve', 1, 35000);

-- Subquery in SELECT
SELECT 
    name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- Subquery in WHERE (Scalar)
SELECT * 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Subquery with IN
SELECT name 
FROM employees 
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name = 'IT');

-- Subquery with EXISTS
SELECT name 
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM departments d WHERE d.dept_id = e.dept_id AND d.dept_name = 'IT'
);

-- Subquery in FROM (Derived Table)
SELECT dept_id, AVG(salary) AS avg_salary 
FROM (
    SELECT * FROM employees WHERE salary > 40000
) AS high_paid
GROUP BY dept_id;

-- Correlated Subquery
SELECT name, salary 
FROM employees e1 
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees e2 
    WHERE e1.dept_id = e2.dept_id
);
