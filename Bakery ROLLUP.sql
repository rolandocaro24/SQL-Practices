# ROLLUP 

SELECT customer_id, SUM(tip) as total_tips 
FROM customer_orders
GROUP BY customer_id WITH ROLLUP;
