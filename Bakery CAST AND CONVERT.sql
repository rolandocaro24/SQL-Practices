# Cast and Convet Functions 


SELECT CAST('2022-01-01' as DATETIME);


SELECT birth_date,
CAST(birth_date as DATETIME),
CONVERT(birth_date, DATETIME) 
FROM customers;

#Pay attention to data type 

SELECT first_name,
CAST(first_name as DECIMAL) 
FROM customers;