# Aggregate Functions 

SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id
; 


SELECT customer_id, AVG(tip) AS avg_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY avg_tips 
; 

SELECT customer_id, MAX(tip) AS big_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY big_tips 
; 

SELECT customer_id, MIN(tip) AS small_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY small_tips 
; 

SELECT customer_id, COUNT(tip) AS count_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY count_tips 
; 

SELECT * 
FROM customer_orders;

SELECT first_name, last_name, COUNT(phone) 
FROM customers
GROUP BY first_name, last_name;

SELECT product_id, tip, COUNT(tip), COUNT(DISTINCT tip)  
FROM customer_orders
GROUP BY product_id, tip
ORDER BY product_id;


