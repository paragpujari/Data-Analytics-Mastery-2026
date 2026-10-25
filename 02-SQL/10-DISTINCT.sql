----------------------------------------------DISTINCT statements--------------------------------------------------------------------------------------------------
/*
	DISTINCT ---------->	It helps in fetching all the unique records from the database table.

	Syntax:

		SELECT DISTINCT col_name FROM table_name;

		SELECT DISTINCT column1, column2 FROM table_name;
*/
----------------------------------------Examples-------------------------------------------------------------------------------------------------------------------
---1.	Display unique employee departments
SELECT DISTINCT department AS Unique_departments FROM Employees WHERE department IS NOT NULL
---2.	Display unique customer cities
SELECT DISTINCT city       AS Unique_cities FROM customers
---3.	Display unique product categories
SELECT DISTINCT category   AS Product_Categories FROM products
---4.	Display unique payment modes
SELECT DISTINCT payment_mode AS Unique_Payment_Modes FROM Payments1
---5.	Display unique department and city combinations
SELECT DISTINCT department,city FROM Employees

-------------------------------------Accenture — Basic level-------------------------------------------------------------------------------------------------------
---1.	Write a query to display unique cities from the Customers table
SELECT DISTINCT city AS Unique_city FROM customers
---2.	Write a query to display unique departments from the Employees table
SELECT DISTINCT department AS Unique_departments FROM Employees WHERE department IS NOT NULL
---3.	Write a query to display unique product categories from the products table
SELECT DISTINCT category   AS Unique_product_category FROM products
---4.	Write a query to display unique payment modes from the Payments1 table
SELECT DISTINCT payment_mode AS Unique_payment_modes FROM Payments1
---5.	Write a query to display unique customer IDs from the Orders table
SELECT DISTINCT customer_id AS Unique_customer_id FROM orders

-----------------------------------PwC Interview Questions---------------------------------------------------------------------------------------------------------
---6.	Display unique employee statuses from the Employees table
SELECT DISTINCT status AS Unique_employee_status FROM Employees
---7.	Display unique cities where employees live
SELECT DISTINCT city AS Unique_cities FROM Employees
---8.	Display unique payment statuses from the Payments1 table
SELECT DISTINCT payment_status AS Unique_payment_status FROM Payments1
---9.	Display unique order dates from the Orders table
SELECT DISTINCT order_date AS Unique_order_dates FROM orders
---10.	Display unique product prices from the products table
SELECT DISTINCT price AS Unique_product_prices FROM products

----------------------------------Deloitte — Analytical problem-solving--------------------------------------------------------------------------------------------
---11.	Display unique combinations of employee departments and cities
SELECT DISTINCT department,city FROM Employees
---12.	Display unique combinations of product categories and prices
SELECT DISTINCT category, price FROM products
---13.	Display unique combinations of payment modes and payment statuses
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---14.	Display unique combinations of customer IDs and order dates from Orders
SELECT DISTINCT customer_id, order_date FROM orders
---15.	Display unique combinations of employee statuses and departments, including any combinations involving NULL values
SELECT DISTINCT status, department FROM Employees

----------------------------------EY — Intermediate level----------------------------------------------------------------------------------------------------------
---16.	Display unique combinations of customer cities and customer names from Customers
SELECT DISTINCT city,customer_name FROM customers
---17.	Display unique combinations of employee departments, cities, and statuses
SELECT DISTINCT department,city,status FROM Employees
---18.	Display unique combinations of product categories and product names
SELECT DISTINCT category, product_name FROM products
---19.	Display unique combinations of order dates and order amounts
SELECT DISTINCT order_date, order_amount FROM orders
---20.	Display unique combinations of payment modes and order IDs from Payments1
SELECT DISTINCT payment_mode,order_id FROM Payments1