# Regular Expression Metacharacters

# [ - .^$*+?}|

SELECT * 
FROM customers
WHERE first_name REGEXP 'k'; #Anything with a K in it 

SELECT * 
FROM customers
WHERE total_money_spent REGEXP '[0-9]'; #Range of characters because is in brackets 

SELECT * 
FROM customers
WHERE phone REGEXP '6.'; #The value needs to have a character after

SELECT * 
FROM customers
WHERE first_name REGEXP 'k...n'; # Dots act as spaces

SELECT * 
FROM customers
WHERE first_name REGEXP '^K'; # STart with 

SELECT * 
FROM customers
WHERE first_name REGEXP 'n$'; #Looks for the last values

SELECT * 
FROM customers
WHERE first_name REGEXP 'Obi.*'; #Maybe have it 

SELECT * 
FROM customers
WHERE phone REGEXP '6.+';# More than 1 value

SELECT * 
FROM customers
WHERE first_name REGEXP 'K.?n';# 0-1 values

SELECT * 
FROM customers
WHERE first_name REGEXP 'K.{3}n'; #Amount of spaces between letters or values

SELECT * 
FROM customers
WHERE first_name REGEXP 'Kev|Fro'; #Either or characters 




