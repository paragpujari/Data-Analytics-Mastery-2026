--------------------------------------------------AND/OR/NOT--------------------------------------------------------------------------------------------------------
/*
	AND	---------->	It gives the result as True if all the conditions are satisfied.

	OR	---------->	It gives the result as True if either of the conditions are satisfied.

	NOT ----------> It reverses the result of the statement
*/
---------------------------------------------Five Solved Examples----------------------------------------------------------------------------------------------------
---1.	Find employees whose department is IT and whose salary is greater than ₹120,000
SELECT * FROM Employees WHERE ((department = 'IT') AND (salary > 120000)) ORDER BY salary
---2.	Find customers who live in Mumbai or Delhi
SELECT * FROM customers WHERE ((city IN ('Mumbai')) OR (city IN ('Delhi')))
---3.	Find employees who do not belong to the IT department
SELECT * FROM Employees WHERE department <> ('IT') order by salary
---4.	Find employees who are in IT with a salary above ₹120,000, or employees who work in Finance
SELECT * FROM Employees WHERE (department = 'IT' AND salary > 120000) OR (department = 'Finance') ORDER BY salary
---5.	Find successful UPI payments, excluding orders dated before July 2026
SELECT * FROM Payments1 a
JOIN          orders    b
ON            a.order_id = b.order_id
WHERE         a.payment_mode = 'UPI' AND a.payment_status = 'Success' AND b.order_date >= '2026-07-01'
ORDER BY      b.order_date

-------------------------------------------Accenture — Basic level---------------------------------------------------------------------------------------------------
---1.	Write a query to find employees whose department is IT and whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE department = 'IT' AND salary > 100000 ORDER BY salary
---2.	Write a query to find customers who live in Mumbai or Hyderabad using the OR operator
SELECT * FROM customers WHERE city IN ('Mumbai') OR city IN ('Hyderabad')
---3.	Write a query to retrieve products whose category is Electronics and price is less than ₹10,000
SELECT * FROM products WHERE category = 'Electronics' AND price > 10000 ORDER BY price
---4.	Write a query to find employees who are not Active using the NOT operator
SELECT * FROM Employees WHERE NOT status = 'Active' ORDER BY salary
---5.   Write a query to find orders with an order_amount greater than ₹1,000 and less than ₹3,000
SELECT * FROM orders WHERE order_amount > 1000 AND order_amount < 3000 ORDER BY order_date

------------------------------------------PwC — Intermediate level--------------------------------------------------------------------------------------------------
---6.	Write a query to retrieve employees who work in IT or Finance and have a salary greater than ₹100,000
SELECT * FROM Employees WHERE (department = 'IT' OR department = 'Finance') AND salary > 100000 ORDER BY salary
---7.	Write a query to find employees who are Active, belong to HR, and earn less than ₹65,000
SELECT * FROM Employees WHERE status = 'Active' AND department = 'HR' AND salary < 65000 ORDER BY salary
---8.   Write a query to retrieve products that are not in the Electronics category and have a price greater than ₹1,000
SELECT * FROM products WHERE NOT category = 'Electronics' AND price > 1000 ORDER BY price
---9.   Write a query to find successful payments made through UPI or Cash
SELECT * FROM Payments1 WHERE payment_status = 'Success' AND (payment_mode = 'UPI' OR payment_mode = 'Cash')
---10.	Write a query to find customers who live in either Delhi or Mumbai but whose customer ID is not 101 or 102
SELECT * FROM customers WHERE city IN ('Delhi') OR city IN ('Mumbai') AND NOT customer_id IN ('101') OR NOT customer_id IN ('102')

-----------------------------------------Deloitte — Analytical problem-solving--------------------------------------------------------------------------------------
---11.	Find employees who are either in IT with a salary above ₹130,000 or in Finance with a salary above ₹70,000. Write a query using logical operators and parentheses
SELECT * FROM Employees WHERE (department = 'IT' AND salary > '130000') OR (department = 'Finance' AND salary > 70000) ORDER BY salary
---12.	Find orders placed in June 2026 with an amount greater than ₹1,000, excluding orders whose amounts are greater than ₹2,500
SELECT * FROM orders WHERE order_date >= '2026-06-01' AND order_date <= '2026-06-30' AND order_amount > 1000 AND NOT order_amount > 2500 ORDER BY order_date
---13.	Identify successful UPI payments for orders placed on or after July 1, 2026, excluding orders with an amount below ₹500
SELECT * FROM Payments1 p
JOIN          orders    o
ON            p.order_id = o.order_id
WHERE p.payment_status = 'Success' AND p.payment_mode ='UPI' AND o.order_date >= '2026-07-01'
AND   NOT o.order_amount < 500
ORDER BY o.order_date
---14.	Find employees who are Active and either belong to IT or earn more than ₹100,000. Ensure the conditions are grouped correctly
SELECT * FROM Employees WHERE status = 'Active' AND (department = 'IT' OR salary > 100000) ORDER BY salary
---15. Find products that belong to Electronics or Appliances, cost more than ₹5,000, and are not priced above ₹50,000
SELECT * FROM products WHERE category = 'Electronics' OR category ='Appliances' AND price > 5000 AND NOT price > 50000 ORDER BY price


---------------------------------------------E&Y — Interview practice----------------------------------------------------------------------------------------------------
---16. Write a query to find employees who are Active and work in either IT or Finance, but exclude employees earning less than ₹70,000
SELECT * FROM Employees WHERE (status = 'Active') AND (department = 'IT' OR department = 'Finance') AND NOT salary < 70000 ORDER BY salary
---17. Find customers who live in Bangalore, Hyderabad, or Pune using logical operators without using the IN operator
SELECT * FROM customers WHERE city = 'Bangalore' OR city = 'Hyderabad' OR city = 'Pune'
---18. Find orders whose amounts are between ₹500 and ₹2,000, excluding orders placed before June 15, 2026
SELECT * FROM orders WHERE order_amount BETWEEN 500 AND 2000 AND NOT order_date < '2026-06-15' ORDER BY order_date
---19. Write a query to identify employees who do not work in HR or Marketing and whose salary is greater than ₹60,000. Consider how NULL values affect the result
SELECT * FROM Employees WHERE (NOT department = 'HR' OR NOT department = 'Marketing') AND salary > 60000 ORDER BY salary
---20.	Find successful payments made through UPI or Credit Card for orders placed in July 2026, excluding payments whose status is Failed
SELECT * FROM Payments1 p
JOIN          orders    o
ON            p.order_id = o.order_id
WHERE (p.payment_mode = 'UPI' OR p.payment_mode = 'Credit Card')
AND   o.order_date >= '2026-07-01' AND o.order_date <= '2026-07-31'
AND   NOT p.payment_status = 'Failed'
ORDER BY o.order_date