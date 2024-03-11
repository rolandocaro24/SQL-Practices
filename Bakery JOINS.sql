# Inner Join 

SELECT * 
FROM customers;


SELECT * 
FROM customer_orders;



SELECT * 
FROM customers c
JOIN customer_orders  co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id;

# by default inner join 


SELECT * 
FROM products;

SELECT * 
FROM customer_orders;

SELECT product_name, SUM(order_total) as Total
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2
;


SELECT * 
FROM suppliers;

SELECT * 
FROM ordered_items;

SELECT *
FROM suppliers s
JOIN ordered_items ot
 ON ot.shipper_id = s.supplier_id
 ;

# Joining Multiple Tables

SELECT product_name, order_total, first_name 
FROM products p
JOIN customer_orders co 
	ON p.product_id = co.product_id 
JOIN customers c 
	ON co.customer_id = c.customer_id
;

SELECT p.product_id , co.product_id, co.customer_id, c.customer_id 
FROM products p
JOIN customer_orders co 
	ON p.product_id = co.product_id 
JOIN customers c 
	ON co.customer_id = c.customer_id
;

# Joining on Multiple Conditions 


SELECT * 
FROM customer_orders
;
SELECT * 
FROM customer_orders_review
;

SELECT * 
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
	AND co.customer_id = cor.customer_id
    AND co.order_date = cor.order_date
    ;

# OUTER JOINS 

SELECT c.customer_id, first_name, co.order_id
FROM customers c
JOIN customer_orders co 
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;


SELECT c.customer_id, first_name, co.order_id
FROM customers c
LEFT JOIN customer_orders co 
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;


SELECT c.customer_id, first_name, co.order_id
FROM customers c
RIGHT JOIN customer_orders co 
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;

# SELF JOINS 


SELECT * 
FROM customers;


SELECT c.customer_id, c.first_name, c.last_name, ss.customer_id, ss.first_name, c.last_name
FROM customers c 
JOIN customers ss
	ON c.customer_id + 1 = ss.customer_id
;

# CROSS JOINS 

SELECT * 
FROM customers
;

SELECT * 
FROM customer_orders
;

SELECT c.customer_id, c.first_name, co.customer_id, order_id
FROM customers c
CROSS JOIN customer_orders co
ORDER BY order_id
;

# NATURAL JOINS 

SELECT * 
FROM products p 
JOIN customer_orders co 
	ON p.product_id = co.product_id 
ORDER BY p.product_id
;

SELECT * 
FROM products p 
NATURAL JOIN customer_orders co # Can be used when table share columns but never USE IT 
ORDER BY p.product_id
;




# USING in JOINS 

SELECT c.customer_id, first_name, co.order_id
FROM customers c
LEFT OUTER JOIN customer_orders co 
	ON c.customer_id = co.customer_id 
ORDER BY c.customer_id, co.order_id ;

SELECT c.customer_id, first_name, co.order_id
FROM customers c
LEFT OUTER JOIN customer_orders co 
	USING (customer_id)  #USING can be used when both columns are in both tables  
ORDER BY c.customer_id, co.order_id ;


    
    
     

