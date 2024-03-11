# ALIASING 

SELECT product_name AS "Goodie Name", units_in_stock AS 'UIS'
FROM products
;

SELECT p.units_in_stock * p.sale_price AS Potential_Revenue
FROM products p
;