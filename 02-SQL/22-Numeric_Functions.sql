------------------------------------------------------Numeric Functions----------------------------------------------------------------------------------------------\
/*
	Numeric Functions are those functions that is used to perform certain mathematical operations on the data.

		Important SQL Numeric Functions
         Function	                        Purpose	                                                 Example
         ABS()	                     Returns absolute value	                                ABS(-100) → 100
         ROUND()	                 Rounds a number to specified decimal places	        ROUND(125.678, 2) → 125.68
         CEIL() / CEILING()	         Rounds up to the nearest integer	                    CEILING(12.3) → 13
         FLOOR()	                 Rounds down to the nearest integer	                    FLOOR(12.9) → 12
         TRUNC() / TRUNCATE()	     Removes decimal digits without rounding	            TRUNC(12.89, 1) → 12.8
         MOD()	                     Returns the remainder after division	                MOD(10, 3) → 1
         POWER()	                 Raises a number to a power	                            POWER(2, 3) → 8
         SQRT()	                     Returns the square root	                            SQRT(81) → 9
         SIGN()	                     Returns the sign of a number	                        SIGN(-25) → -1
         EXP()	                     Returns \(e\) raised to a power	                    EXP(0) → 1
*/

---------------------------------------Five Solved Examples----------------------------------------------------------------------------------------------------
---1.   Display the absolute value of every order amount
SELECT order_amount,ABS(order_amount) AS Absolute_order_amount FROM orders
---2.   Round product prices to one decimal place
SELECT price, ROUND(price,1) AS rounded_price FROM products
---3.   Round employee salaries up to the next multiple of 1,000
SELECT salary, CEILING(salary/1000.0)*1000.0 AS Rounded_salary FROM Employees
---4.   Display each product price rounded down to the nearest whole number
SELECT price, FLOOR(price) AS Floor_price FROM products
---5.   Find orders whose order_id is an even number
SELECT *,(order_id%2) FROM orders WHERE (order_id%2)=0 ORDER BY order_id

---------------------------------------Accenture — Basic Level------------------------------------------------------------------------------------------------
---1.   Using the Orders table, write a query to display each order_id, order_amount, and the absolute value of order_amount using ABS()
SELECT order_id, order_amount,ABS(order_amount) AS Absolute_order_amount FROM orders
---2.   Using the products table, write a query to round every product price to two decimal places using ROUND()
SELECT price, ROUND(price,2) AS Rounded_product_price FROM products
---3.   Using the Employees table, write a query to display employee salaries rounded up to the nearest integer using CEILING()
SELECT salary, CEILING(salary) FROM Employees
---4.   Using the products table, write a query to display product prices rounded down to the nearest integer using FLOOR()
SELECT price, FLOOR(price) as rounded_price FROM products
---5.   Write a query to calculate the remainder when each order_id is divided by 5 using MOD() or the equivalent operator in your SQL dialect
SELECT *,order_id%5 as rem FROM orders ORDER BY order_id

---------------------------------------PwC — Intermediate Level----------------------------------------------------------------------------------------------
---6. Using the Orders table, display order_id, order_amount, and ROUND(order_amount, -2) to round each amount to the nearest hundred. Use a SQL dialect that supports negative precision in ROUND()
SELECT order_id, order_amount,ROUND(order_amount,-2) as rounded_order_amount FROM orders
---7. Using the Employees table, calculate the difference between each salary and its value rounded down to the nearest multiple of 5,000, using numeric functions
SELECT salary, FLOOR(salary/5000.0)*5000.0 as rounded_salary,(salary - FLOOR(salary/5000.0)*5000.00) as diff_salary FROM Employees
---8. Using the products table, calculate the square of each product's price using POWER()
SELECT price, POWER(price,2) as product_price_squared FROM products
SELECT price, (price*price) as product_price_squared FROM products
---9. Using the products table, calculate the square root of each product's price using SQRT()
SELECT price,SQRT(price) AS price_square_root FROM products
---10. Using the Orders table, display each order amount and its sign using SIGN(), distinguishing negative, zero, and positive values through the function's numeric result
SELECT order_amount,SIGN(order_amount) as Signed_order_amount FROM orders ORDER BY order_amount

------------------------------------Deloitte — Analytical Problem-Solving------------------------------------------------------------------------------------
---11.  Using the Orders table, calculate the absolute difference between each order amount and the amount rounded to the nearest hundred
SELECT *,order_amount,CEILING(order_amount/100.0)*100.0 as rounded_order_amount,ABS(order_amount - CEILING(order_amount/100.0)*100.0) AS Absolute_difference_amount FROM orders order by order_id
---12.  Using the Employees table, calculate how much each non-NULL salary must increase to reach the next multiple of 10,000. If a salary is already an exact multiple of 10,000, return zero
SELECT salary, CEILING(salary/10000)*10000.0,salary-CEILING(salary/10000)*10000.0 AS Higher_salary FROM Employees
---13.  Using the products table, calculate the remainder when each product price, rounded to the nearest integer, is divided by 7
SELECT price,price/7 AS Price, CEILING(price/7) AS Rounded_price FROM products ORDER BY 1 
---14.  Using the Orders table, calculate the absolute order amount and determine its remainder when divided by 100. Display both numeric results
SELECT order_amount,ABS(order_amount) AS Absolute_order_amount,(order_amount/100) as rounded_order_amount FROM orders 
---15.  Using the Employees table, round each non-NULL salary down to the nearest multiple of 1,000 and calculate the difference between the original salary and that rounded value
SELECT salary,FLOOR(salary/1000.0)*1000.0 AS Rounded_salary,(salary-FLOOR(salary/1000.0)*1000.0) AS difference_salary FROM Employees

------------------------------------E&Y — Advanced Numeric Functions-----------------------------------------------------------------------------------------
---16. Using the Orders table, calculate each order amount's absolute value, round it to two decimal places, and display the result alongside the original amount
SELECT order_amount,ABS(order_amount) AS Absolute_order_amount,ROUND(order_amount,2) as rounded_order_amount FROM orders
---17. Using the Employees table, calculate the next multiple of 5,000 for each non-NULL salary. Exact multiples must remain unchanged
SELECT salary,CEILING(salary/5000.0)*5000.0 as next_salary_value FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---18. Using the products table, calculate the square of each price and round the result to two decimal places using numeric functions
SELECT price,POWER(price,2) AS price_square,ROUND(price,2) as rounded_price FROM products order by 1
---19. Using the Orders table, classify each order amount by its sign using SIGN(), and calculate the absolute amount for each order
SELECT order_amount,SIGN(order_amount) AS Sign_order_amount,ABS(order_amount) AS Absolute_order_amount FROM orders ORDER BY 1 
---20. Using the Employees table, calculate the remainder of each non-NULL salary when divided by 1,000, then calculate the amount needed to reach the next multiple of 1,000. Exact multiples must require no additional amount
SELECT salary,salary%1000 as rem,CEILING(salary/1000.0)*1000.0 AS Higher_salary FROM Employees WHERE salary IS NOT NULL ORDER BY 1