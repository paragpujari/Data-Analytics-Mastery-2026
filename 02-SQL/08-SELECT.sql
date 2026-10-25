----------------------------------------------------------SELECT-------------------------------------------------------------------------------------------
/*
	SELECT -------------->	It is used to fetch the records from the database table.

	Syntax:---

	(a.)	SELECT col1, col2 FROM table_name;	-------->	It is used to fetch some columns from the database table.

	(b.)	SELECT * FROM table_name;			-------->	It is used to fetch all the records from the database table;
*/
-----------------------------------------Five Solved examples----------------------------------------------------------------------------------------------------
---1.	Display all customer columns
SELECT * FROM customers
---2.	Display customer names only
SELECT customer_name FROM customers
---3.	Display customer names and cities
SELECT customer_name,city FROM customers
---4.	Rename column headings using aliases
SELECT customer_id AS ID, customer_name AS Name, city AS City FROM customers
---5.   Display employee information with readable aliases
SELECT emp_name AS Name, department AS Department, salary AS Salary FROM Employees

--------------------------------------Accenture Interview Questions--------------------------------------------------------------------------------------------
---1.	Write a SQL query to display all columns from the Customers table
SELECT * FROM customers
---2.	Write a SQL query to display only customer_id from the Customers table
SELECT customer_id AS ID FROM customers
---3.	Write a SQL query to display customer_name and city from the Customers table
SELECT customer_name AS Name,city AS City FROM customers
---4.	Write a SQL query to display only product_name from the products table
SELECT product_name AS Productname FROM products
---5.   Write a SQL query to display emp_name and salary from the Employees table
SELECT emp_name AS Name,salary  AS Salary FROM Employees

-------------------------------------PwC Interview Questions---------------------------------------------------------------------------------------------------
---6. Write a SQL query to display customer_id and customer_name from Customers, renaming customer_id as ID
SELECT customer_id AS ID, customer_name FROM customers
---7. Write a SQL query to display product_name and price from products, renaming price as Product_Price
SELECT product_name AS Product_Name,price AS Product_Price FROM products
---8. Write a SQL query to display emp_name and department from Employees, using the aliases Employee_Name and Department_Name
SELECT emp_name AS Employee_Name, department AS Department_Name FROM Employees
---9. Write a SQL query to display order_id, order_date, and order_amount from Orders, renaming order_amount as Amount
SELECT order_id, order_date, order_amount AS Amount FROM orders
---10. Write a SQL query to display payment_id, payment_mode, and payment_status from Payments1, assigning a suitable alias to each selected column
SELECT payment_id AS ID, payment_mode AS Mode,payment_status AS Status FROM Payments1

--------------------------------------Deloitte — Analytical problem-solving level------------------------------------------------------------------------------
---11. Write a SQL query to prepare a customer listing containing customer_id, customer_name, and city, with the output headings Customer_ID, Customer_Name, and Customer_City
SELECT customer_id AS Customer_ID, customer_name AS Customer_Name,city AS Customer_City FROM customers
---12. Write a SQL query to prepare an employee salary listing containing emp_name, department, and salary, with meaningful aliases for all three columns
SELECT emp_name AS Name, department AS Department, salary AS Salary FROM Employees
---13. Write a SQL query to prepare an order report containing order_id, customer_id, order_date, and order_amount, renaming the columns with report-friendly headings
SELECT order_id AS Orderid, customer_id AS Customerid, order_date as Dates, order_amount as Amounts FROM orders
---14. Write a SQL query to prepare a product catalogue containing product_id, product_name, category, and price, using suitable aliases for the output
SELECT product_id AS ID, product_name AS Name, category AS Category, price AS Price FROM products
---15. Write a SQL query to prepare a payment report containing payment_id, order_id, payment_mode, and payment_status, with clear and consistent column aliases
SELECT payment_id AS Payment_ID, order_id AS Order_ID,payment_mode AS Payment_Mode, payment_status AS Payment_Status FROM Payments1

---------------------------------------E&Y Interview Questions------------------------------------------------------------------------------------------------
---16. Write a SQL query that displays all columns from Employees without listing each column individually
SELECT * FROM Employees
---17. Write a SQL query that displays emp_id, emp_name, Hire_Date, and email from Employees, assigning meaningful aliases to all four columns
SELECT emp_id AS ID, emp_name AS Name, Hire_Date AS Hiredate,email AS Email FROM Employees
---18. Write a SQL query that displays customer_name and city from Customers, using the aliases Client_Name and Client_Location
SELECT customer_name AS Client_Name,city AS Client_Location FROM customers
---19. Write a SQL query that displays order_id, customer_id, and order_amount from Orders, with the output headings Order_Number, Customer_Number, and Order_Value
SELECT order_id AS Order_Number, customer_id AS Customer_Number,order_amount AS Order_Value FROM orders
---20. Write a SQL query that prepares a business-ready product report using product_name, category, and price from products, with aliases that clearly communicate the meaning of each column
SELECT product_name AS Product_Name, category AS Category, price AS Price FROM products






