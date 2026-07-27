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
--Q11 - Display the department name along with the total salary paid to employees in each department.
SELECT  d.department_name, SUM(e.salary) As Total_Salary
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
-- Second approach to avoid NULL value
SELECT  d.department_name, IFNULL(SUM(e.salary),0) As Total_Salary
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

--Q12 - Display the department name and the number of employees whose salary is greater than 50,000 in each department.
SELECT d.department_name, COUNT(e.emp_id) AS Count_Emp
FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id
WHERE Salary > 50000
GROUP BY d.department_name;
-- Second approach to "Show all departments and the number of employees earning more than 50,000."
SELECT d.department_name, 
COUNT(CASE WHEN e.salary > 50000 THEN e.emp_id END) AS Count_Emp
FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

--Q14 - Highest Paid Employee-->Display the employee name, department name, and salary of the employee(s) having the highest salary.
SELECT e.emp_name, d.department_name, e.salary 
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id
WHERE e.salary = (SELECT MAX(salary) FROM employees);


