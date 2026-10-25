--------------------------------------------------WHERE Statement------------------------------------------------------------------------------------------------------------------
/*
	WHERE -------------->	WHERE is used to filter the rows based on certain conditions.

	Syntax:--    SELECT * FROM table_name WHERE condition;

	             SELECT col1, col2 FROM table_name WHERE condition;
*/

-----------------------------------Examples-----------------------------------------------------------------
---1. Filter customers by city 'Mumbai'
SELECT * FROM customers WHERE city = 'Mumbai'
---2. Filter employees by department 'IT'
SELECT * FROM Employees WHERE department = 'IT'
---3. Filter products by price > 10000
SELECT * FROM products WHERE price > 10000 ORDER BY price
---4. Filter orders by amount >= 2000
SELECT * FROM orders WHERE order_amount >= 2000 ORDER BY order_amount
---5. Filter payments by status 'Success'
SELECT payment_id, payment_mode, payment_status FROM Payments1 WHERE payment_status = 'Success'


---------------------------------------Accenture — Basic level---------------------------------------------
---1.	Write a query to display all customers who live in Delhi
SELECT * FROM customers WHERE city = 'Delhi'
---2.   Write a query to display employees whose department is IT
SELECT * FROM Employees WHERE department = 'IT'
---3.   Write a query to display products whose price is less than 5,000
SELECT * FROM products WHERE price < 5000 order by price
---4.   Write a query to display orders with an order_amount greater than 1,000
SELECT * FROM orders WHERE order_amount > 1000
---5.	Write a query to display payments whose payment_status is Pending
SELECT * FROM Payments1 WHERE payment_status = 'Pending'

---------------------------------------PwC - Interview Questions-------------------------------------------
---6.   Display employee names and salaries for employees earning more than 70,000
SELECT emp_name,salary FROM Employees WHERE salary > 70000 ORDER BY salary
---7.   Display customers whose city is Pune
SELECT * FROM customers WHERE city = 'Pune'
---8.   Display products whose category is Electronics
SELECT * FROM products WHERE category = 'Electronics'
---9.   Display orders whose customer_id is 101
SELECT * FROM orders WHERE customer_id = '101'
---10.  Display payments made using UPI
SELECT * FROM Payments1 WHERE payment_mode = 'UPI'

--------------------------------------Deloitte — Analytical problem-solving-------------------------------
---11.	Display employees whose salary is greater than or equal to 100,000
SELECT * FROM Employees WHERE salary >= 100000 ORDER BY salary
---12.  Display orders whose amount is less than 1,000
SELECT * FROM orders WHERE order_amount < 1000 ORDER BY order_amount
---13.  Display products whose price is greater than 10,000
SELECT * FROM products WHERE price > 10000 ORDER BY price
---14.  Display customers whose customer_id is greater than 115
SELECT * FROM customers WHERE customer_id > 115 ORDER BY customer_id
---15.  Display employees whose status is Inactive
SELECT * FROM Employees WHERE status = 'Inactive'

--------------------------------------E&Y Interview Questions--------------------------------------------
---16.  Display employees who work in the Finance department and earn more than 70,000
SELECT * FROM Employees WHERE department = 'Finance' AND salary > 70000 ORDER BY salary
---17.  Display orders placed by customer 101 with an amount greater than 500
SELECT * FROM orders WHERE customer_id = '101' AND order_amount > '500' ORDER BY order_amount
---18.  Display products in the Furniture category priced below 8,000
SELECT * FROM products WHERE category = 'Furniture' AND price < 8000 ORDER BY price
---19.  Display employees who live in Mumbai and have an Active status
SELECT * FROM Employees WHERE city = 'Mumbai' AND status = 'Active' ORDER BY salary
---20.  Display payments that have a Failed status and use Net Banking
SELECT * FROM Payments1 WHERE payment_status = 'Failed' AND payment_mode = 'Net Banking'