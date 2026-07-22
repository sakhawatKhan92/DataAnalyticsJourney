
-- ========================================
-- Day 1: SQL Practice
-- Topic: INNER JOIN JOIN
-- Author: Sakhawat Khan
-- ========================================
--What is INNER JOIN?
--INNER JOIN returns only the rows that have matching values in both tables.

--Create Database
CREATE DATABASE DataAnalyticsPractice ;

--Create Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

--Q-1: Display the customer’s name and product purchased.

SELECT c.customer_name, o.product 
FROM Customers c inner join Orders o on c.customer_id = o.customer_id;

--Q2- Display customer name, city, product, and amount.

SELECt c.customer_name, c.city, o.product,o.amount
FROM Customers c inner join orders o on c.customer_id = o.customer_id;

--Q3 - Display only customers whose order amount is greater than 10,000

 SELECT c.customer_name, o.product, o.amount
 FROM Customers c inner join orders o on c.customer_id = o.customer_id
 WHERE o.amount >10000;

--Q4- Display all orders sorted by highest amount.
 SELECT c.customer_name, o.product, o.amount
 FROM Customers c inner join orders o on c.customer_id = o.customer_id
 ORDER BY o.amount DESC;

--Q5- Find the total purchase amount for each customer.
 SELECT c.customer_name, SUM(o.amount) As total_amount
 FROM Customers c inner join orders o on c.customer_id = o.customer_id
 GROUP BY c.customer_name ORDER BY total_amount DESC ;
