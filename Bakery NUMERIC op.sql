# Numeric Functions 

# ROUND, FLOOR, CEILING, ABS for Absolute 

SELECT * 
FROM products

;


SELECT ROUND (123.12353439, 6) 
FROM products
;

SELECT sale_price, ROUND(sale_price, 1) AS "DECIMAL"
FROM products
;

SELECT CEILING(5.7); 

SELECT FLOOR(5.7);

SELECT sale_price, CEILING(sale_price), FLOOR(sale_price) 
FROM products
;

SELECT ABS(-4.6);
