CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing');
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary INT
);
INSERT INTO Employees VALUES
(101,'Ali',1,45000),
(102,'Sara',2,65000),
(103,'John',2,70000),
(104,'David',NULL,50000),
(105,'Sneha',3,55000),
(106,'Rahul',5,60000);

---Q1-Display employee name and department name using
SELECT e.emp_name, d.department_name
FROM Employees e INNER JOIN departments d on e.department_id = d.department_id;

--Q2-Display all employees even if they don't have a matching department.
 SELECT e.emp_name, d.department_name
 FROM employees e LEFT JOIN departments d on e.department_id = d.department_id;

--Q3-Display all departments even if no employee belongs to them.
SELECT d.department_name , e.emp_name
FROM departments d LEFT JOIN Employees e on d.department_id = e.department_id;

--Q4 -Display employees whose department is NULL
SELECT e.emp_name, d.department_name
FROM employees e LEFT JOIN departments d on e.department_id = d.department_id
WHERE d.department_id is null;

--Q5-Count employees in each department.
SELECT d.department_name, count(e.emp_name) As Employees_count
FROM departments d LEFT JOIN employees e on d.department_id = e.department_id
GROUP BY d.department_name;

--Q6 -Display departments having more than one employee.
SELECT d.department_name, count(e.emp_name) As Employees_count
FROM departments d LEFT JOIN employees e on d.department_id = e.department_id
GROUP BY d.department_name HAVING Employees_count > 1;
--WHERE filters rows before grouping , HAVING filters groups after grouping.
