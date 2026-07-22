# SQL Notes

## INNER JOIN

Definition:
Returns only matching rows from both tables.

Syntax:

```sql
SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;
```

---

## LEFT JOIN

Definition:
Returns all rows from the left table and matching rows from the right table.

Syntax:

```sql
SELECT *
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id;
```

---

## WHERE

Used to filter records.

Example:

```sql
SELECT *
FROM Employees
WHERE salary > 50000;
```

---

## ORDER BY

Used to sort data.

Example:

```sql
ORDER BY salary DESC;
```
