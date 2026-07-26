-- Q7 -Display every employee along with their department name and salary, sorted by salary in descending order.
SELECT e.emp_name, d.department_name, e.salary
FROM employees e LEFT JOIN departments d on e.department_id = d.department_id
ORDER BY e.salary DESC;

--Q8-Display the employee name, department name, and salary of employees whose salary is greater than 55,000.
SELECT e.emp_name, d.department_name, e.salary
FROM employees e LEFT JOIN departments d on e.department_id = d.department_id
WHERE e.salary > 55000;

--Q9 Display the employee name, department name, and salary of employees who belong to either the IT or Finance department.
SELECT e.emp_name, d.department_name, e.salary
FROM employees e LEFT JOIN departments d on e.department_id = d.department_id 
WHERE d.department_name in ("IT","Finance");

--10 -Display all departments along with the number of employees in each department.
SELECT d.department_name, COUNT(e.emp_id) AS Emp_Count
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

