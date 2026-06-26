# SQL Best Practices

## Objective

The objective of this document is to describe the recommended practices for writing efficient, readable, and maintainable SQL queries.

---

# 1. Use Meaningful Names

Always use meaningful names for databases, tables, and columns.

### Good Example

```sql
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

### Bad Example

```sql
CREATE TABLE S (
    A INT,
    B VARCHAR(100)
);
```

---

# 2. Write SQL Keywords in Uppercase

Writing SQL keywords in uppercase improves readability.

### Good Example

```sql
SELECT * FROM Students;
```

### Bad Example

```sql
select * from Students;
```

---

# 3. Indent SQL Queries Properly

Proper indentation makes SQL queries easier to read.

Example:

```sql
SELECT StudentID,
       StudentName
FROM Students
WHERE Department = 'CSE';
```

---

# 4. Use Comments

Comments help explain the purpose of SQL statements.

Example:

```sql
-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY
);
```

---

# 5. Avoid SELECT *

Instead of selecting every column, retrieve only the required columns.

Good Example:

```sql
SELECT StudentName, Department
FROM Students;
```

Avoid:

```sql
SELECT *
FROM Students;
```

---

# 6. Always Use WHERE with UPDATE and DELETE

Using UPDATE or DELETE without a WHERE clause affects every record in the table.

Good Example:

```sql
UPDATE Students
SET Department = 'CSE'
WHERE StudentID = 1;
```

---

# 7. Use Appropriate Data Types

Choose the correct data type according to the data being stored.

Examples:

- INT for numeric values
- VARCHAR for text
- DATE for dates
- DECIMAL for monetary values

---

# 8. Define Primary Keys

Every table should have a Primary Key to uniquely identify each record.

Example:

```sql
StudentID INT PRIMARY KEY
```

---

# 9. Normalize Data

Store related data in separate tables to reduce redundancy and improve consistency.

Example:

- Students Table
- Departments Table

instead of storing department names repeatedly.

---

# 10. Backup the Database Regularly

Regular database backups help prevent data loss due to accidental deletion or system failures.

---

# Conclusion

Following SQL best practices improves:

- Query readability
- Database performance
- Data integrity
- Code maintainability
- Collaboration among developers

These practices are widely used in both academic projects and real-world database applications.