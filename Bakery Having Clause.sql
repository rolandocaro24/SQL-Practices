# Having Vs WHERE clause

SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id;

SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5;


SELECT customer_id, SUM(order_total) as total
FROM customer_orders
GROUP BY customer_id
HAVING SUM(order_total) > 40
Order by 2;


# 2 IS THE COLUMN NUMBER LOCATION