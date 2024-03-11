# Subqueries in Select and From statements 

SELECT product_id, 
quantity, 
(SELECT SUM(quantity) 
	FROM ordered_items) SUM_quantities,
(quantity/(SELECT SUM(quantity) 
	FROM ordered_items) * 100) percent_quantities
FROM ordered_items
;

SELECT product_id, avg_quantities
FROM (SELECT product_id, 
quantity, 
(SELECT AVG(quantity) 
	FROM ordered_items) avg_quantities
FROM ordered_items) as avg_quant
;

