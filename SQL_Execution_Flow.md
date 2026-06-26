# Question 1: SQL Execution Flow

SQL commands follow a specific logical execution order so that the database can correctly filter, group, calculate, and display data. This order is important because SQL does not execute a query in the same order in which we usually write it.


# SQL Execution Flow

The logical execution order of a SQL query is:
```
FROM
    ↓
JOIN
    ↓
ON
    ↓
WHERE
    ↓
GROUP BY
    ↓
HAVING
    ↓
SELECT
    ↓
DISTINCT
    ↓
ORDER BY
    ↓
LIMIT
```
## 1. FROM

The `FROM` clause is executed first. It tells the database which table or tables should be used to retrieve data.

Example:

```sql
FROM employees
```

## 2. JOIN

After identifying the main table, SQL performs joins if multiple tables are involved. Joins combine rows from two or more tables based on a related column.

Example:

```sql
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
```

## 3. WHERE

The `WHERE` clause filters rows before grouping takes place. It removes records that do not satisfy the given condition.

Example:

```sql
WHERE salary > 30000
```

## 4. GROUP BY

The `GROUP BY` clause groups rows that have the same values in specified columns. It is commonly used with aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.

Example:

```sql
GROUP BY dept_id
```

## 5. HAVING

The `HAVING` clause filters grouped data. It is similar to `WHERE`, but it works after grouping and is used with aggregate conditions.

Example:

```sql
HAVING COUNT(*) > 2
```

## 6. SELECT

The `SELECT` clause chooses the columns or calculated values that will appear in the final result.

Example:

```sql
SELECT dept_id, COUNT(*)
```

## 7. DISTINCT

The `DISTINCT` keyword removes duplicate rows from the result set.

Example:

```sql
SELECT DISTINCT dept_id
```

## 8. ORDER BY

The `ORDER BY` clause sorts the final result in ascending or descending order.

Example:

```sql
ORDER BY salary DESC
```

## 9. LIMIT / OFFSET

The `LIMIT` clause restricts the number of rows displayed, while `OFFSET` skips a specific number of rows before displaying the result.

Example:

```sql
LIMIT 5 OFFSET 10
```

## Purpose Behind This Execution Order

SQL follows this specific execution order because each step depends on the result of the previous step. First, the database needs to know which table contains the data. Then it combines related tables, filters unnecessary rows, groups similar records, applies conditions to those groups, selects the required columns, removes duplicates, sorts the data, and finally limits the result.

This sequence helps SQL produce accurate results and improves query efficiency.
