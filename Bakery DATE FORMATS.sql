# Date and Date Format Functions 

SELECT * 
FROM customers;


SELECT NOW(), 
CURDATE(),
CURTIME();


SELECT YEAR(NOW()),
MONTH(NOW()),
DAY(NOW());

SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW());

SELECT *
FROM customer_orders
WHERE YEAR(order_date)  = YEAR(NOW()) - 2;


SELECT DAYNAME(NOW()); 
FROM customer_orders
WHERE 

SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
FROM customer_orders;




SELECT birth_date, DATE_FORMAT(birth_date, '%M %D, %Y')
FROM customers;


SELECT birth_date, DATE_FORMAT(birth_date, '%m %d %Y')
FROM customers;

SELECT birth_date, DATE_FORMAT(birth_date, '%m-%d-%Y')
FROM customers;
