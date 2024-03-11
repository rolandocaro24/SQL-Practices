# Order BY 

SELECT * 
FROM customers
Order By first_name ASC
;

SELECT * 
FROM customers
Order By state DESC, total_money_spent DESC
;

SELECT * 
FROM customers
Order By 8 DESC, 9 ASC
;

# do not use numbers because it does not carry over if the columns are been formatted 
