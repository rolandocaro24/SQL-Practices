# STRING FUNCTION 

# LENGTH, UPPER, LOWER, SUBSTRING, TRIM, LTRIM, RTRIM, LEFT, RIGHT, REPLACE


SELECT *
FROM customers;


SELECT first_name, LENGTH(first_name) as LEN_first
FROM customers
ORDER BY LEN_first;

SELECT first_name, UPPER(first_name), LOWER(first_name) 
FROM customers;

SELECT * 
FROM customers;

SELECT "   sky", TRIM("   sky"), LTRIM("   sky   "), RTRIM("    sky   ")
FROM customers;


SELECT 'I  love  SQL', TRIM('I  love  SQL');
#DO NOT REMOVE WHITE SPACE IN THE MIDDLE 

SELECT LEFT ('Alexander', 4);

SELECT first_name, LEFT(first_name, 3)
FROM customers;

SELECT first_name, RIGHT(first_name, 3)
FROM customers;


SELECT SUBSTRING('Alexander', 2,3);

SELECT phone, 
SUBSTRING(phone,1,3), 
SUBSTRING(phone,5,3), 
SUBSTRING(phone,9,4), 
CONCAT(SUBSTRING(phone,1,3), SUBSTRING(phone,5,3), SUBSTRING(phone,9,4)) AS PHONEBOOK 
FROM customers; 
#First value is the position you want to start and second value is the ammount of string you are stringing 

SELECT REPLACE(first_name, 'a', 'z')
FROM customers; 

SELECT REPLACE(phone, '-', '')
FROM customers;
# First argument is the letter you trying to replace or value and second argument is the value assigned



SELECT LOCATE('x', 'Alexander');
#First argument is the string being looked for and second is where to find it 

SELECT first_name, LOCATE('Mic', first_name) 
FROM customers;


SELECT CONCAT('Alex', ' Freberg');

