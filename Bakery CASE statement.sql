# CASE Statement 

SELECT order_total,
tip,
IF(tip > 2, order_total * .75, order_total * 1.1) as new_total
FROM customer_orders;


SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'Order Now'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    WHEN units_in_stock > 51 THEN 'In Stock'
END as 'Order Status'
FROM products
;


SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'Order Now'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    ELSE 'In Stock'
END as 'Order Status'
FROM products
;



SELECT order_id, 
order_date,
CASE 
	WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Active'
    WHEN YEAR(order_date) = YEAR(NOW()) - 3 THEN 'Last Year'
    ELSE 'Archived'
END as 'Years'
FROM customer_orders
;
