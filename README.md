# SQL-Task6-Subqueries
# SQL Task 6 - Subqueries & Nested Queries

## 📌 Objective
To demonstrate the use of **subqueries** in `SELECT`, `WHERE`, and `FROM` clauses using MySQL.

## 🔧 Tools Used
- MySQL Workbench
- MySQL Server 8.0

## 📂 Database Details

**Database Name:** `company`

**Tables:**
- `departments(dept_id, dept_name)`
- `employees(emp_id, name, dept_id, salary)`

## 🧪 Sample Data Inserted

```sql
INSERT INTO departments VALUES 
(1, 'HR'), 
(2, 'IT'), 
(3, 'Sales');

INSERT INTO employees VALUES 
(1, 'Alice', 1, 40000),
(2, 'Bob', 2, 60000),
(3, 'Charlie', 2, 55000),
(4, 'David', 3, 45000),
(5, 'Eve', 1, 35000);
✅ Subqueries Demonstrated
Subquery in SELECT clause

Subquery in WHERE clause

Subquery using IN

Subquery using EXISTS

Subquery in FROM clause (Derived Table)

Correlated Subquery
