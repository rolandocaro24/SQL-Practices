# LIKE Operator

# % - zero, one, or multiple characters
# _ - single character

SELECT * 
FROM customers
WHERE first_name LIKE "K%";

SELECT * 
FROM customers
WHERE first_name LIKE "%N%"
;

SELECT * 
FROM customers
WHERE first_name LIKE "_o_"
;

SELECT * 
FROM customers
WHERE first_name LIKE "___kin"
;

SELECT * 
FROM customers
WHERE last_name LIKE "s_____%"
;

SELECT * 
FROM customers
WHERE phone LIKE "975%"
;