--------------------------------------------------Aggragate Functions---------------------------------------------------------------------------------------------
/*
	Aggregate functions are the set of functions that is used to perform the calculations on the set of rows and return the single result.
*/

/*
	1.	COUNT(*)	------------>	It counts all the records including the NULL records.

	2.	COUNT(col_name)	-------->	It counts the records only involving the NOT-NULL records.
*/

-----------------------------------------Five Solved Examples--------------------------------------------------------------------------------------------------------
---1.	Count the total number of orders
SELECT COUNT(1) AS Total_orders FROM orders
---2.	Count the number of employees whose salary is not NULL
SELECT COUNT(salary) AS Total_employees FROM Employees
---3.	Calculate the total order amount
SELECT SUM(order_amount) AS Total_order_amount FROM orders
---4.	Calculate the average employee salary
SELECT AVG(salary) AS Average_salary FROM Employees
---5.	Display the number of orders, total order amount, and average order amount in a single query
SELECT COUNT(order_id) AS Total_orders, SUM(order_amount) AS Total_order_amount, AVG(order_amount) AS Average_order_amount FROM orders

-------------------------------------Accenture — Basic Level---------------------------------------------------------------------------------------------------------
---1.	Using the Orders table, count the total number of records
SELECT COUNT(*) AS Total_orders FROM orders
---2.	Using the Employees table, count the employees whose salary is not NULL
SELECT COUNT(salary) as Total_records FROM Employees
---3.	Using the Orders table, calculate the total of all order_amount values using SUM()
SELECT SUM(order_amount) AS Total_order_amount FROM orders
---4.	Using the products table, calculate the average product price using AVG()
SELECT AVG(price) AS Average_product_price FROM products
---5.	Using the Employees table, calculate the average salary using AVG()
SELECT AVG(salary) AS Average_salary FROM Employees

-------------------------------------PwC — Intermediate Level--------------------------------------------------------------------------------------------------------
---6. Using the Orders table, calculate the total and average order amounts in a single query
SELECT SUM(order_amount) AS Total_order_amount, AVG(order_amount) AS Average_order_amount FROM orders
---7. Using the Employees table, display the total salary of employees whose salary is not NULL
SELECT SUM(salary) AS Total_salary FROM Employees
---8. Using the products table, calculate the sum and average of all product prices in one query
SELECT SUM(price) AS Total_price, AVG(price) AS Average_price FROM products
---9. Using the Orders table, count how many orders have a non-NULL order_amount
SELECT COUNT(order_amount) AS Total_orders FROM orders
---10. Using the Employees table, calculate the average salary and count the number of non-NULL salary values
SELECT AVG(salary) AS Average_salary,COUNT(salary) AS Total_salary_values FROM Employees

-----------------------------------Deloitte — Analytical Problem-Solving---------------------------------------------------------------------------------------------
---11.	Using the Orders table, calculate the average order amount and total order amount, considering negative amounts as recorded
SELECT AVG(order_amount) AS Average_order_amount, SUM(order_amount) AS Total_order_amount FROM orders
---12.	Using the Employees table, calculate the total salary and average salary while excluding employees with NULL salaries from both calculations
SELECT SUM(salary) AS Total_salary,AVG(salary) AS Average_salary FROM Employees
---13.	Using the products table, calculate the average price and total price of all products, ensuring that the average is based on non-NULL prices
SELECT AVG(price) AS Average_price,SUM(price) AS Total_price FROM products
---14.	Using the Orders table, calculate the average order amount after excluding rows where order_amount is NULL
SELECT AVG(order_amount) AS Average_order_amount FROM orders
---15.	Using the Employees table, return the total number of employee rows, the number of non-NULL salaries, and the average non-NULL salary. Explain the significance of the difference between the two counts
SELECT COUNT(*) AS Total_employee_rows, COUNT(salary) as total_emp_salaries,AVG(salary) AS Average_salary FROM Employees
/*
	Observations:	COUNT(*)	------>	It includes all the rows including NULL as well as NON NULL records
				
					COUNT(salary)----->	It includes only NOT NULL salary records.
*/

---------------------------------E&Y — Advanced Practice------------------------------------------------------------------------------------------------------------
---16. Using the Orders table, calculate the total order amount and average order amount, and explain how a negative order amount affects both results
SELECT SUM(order_amount) AS Total_order_amount,AVG(order_amount) AS Average_order_amount FROM orders

SELECT SUM(order_amount) AS Total_order_amount,AVG(order_amount) AS Average_order_amount FROM orders WHERE order_amount > 0

/*
	With the negative order amount, the total as well as the average order amount becomes less as compared to without including the negative order amount
*/
---17. Using the Employees table, calculate the total salary and average salary while accounting for the fact that some salary values may be NULL
SELECT SUM(salary) AS Total_salary, AVG(salary) AS Average_salary FROM Employees
---18.	Using the products table, calculate the total and average product price and count the number of products with non-NULL prices
SELECT SUM(price) AS Total_product_price, AVG(price) AS Average_product_price,COUNT(price) AS Total_products FROM products
---19.	Using the Employees table, compare COUNT(*) with COUNT(salary) to identify how missing salary values affect the results
SELECT COUNT(*) AS Total_records, COUNT(salary) AS Total_Salary_records FROM Employees
/*
	Observations:	COUNT(*) involves all the records including NULL as well as NOT NULL records

					COUNT(salary)	involves only NOT NULL salary records
*/
---20.	Using the Orders table, calculate the total and average order amount and count the number of orders with non-NULL amounts. Ensure that all three results are returned in a single row
SELECT SUM(order_amount) AS Total_order_amount, AVG(order_amount) AS Average_order_amount,COUNT(order_amount) as Total_orders FROM orders