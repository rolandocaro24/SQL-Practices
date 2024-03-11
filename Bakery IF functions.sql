# IF function 

# IF(condition, condition is true do this, condition is false do this) 

SELECT tip,
IF(tip > 1, 'Amazing', 'Cheap...')
FROM customer_orders;
 
 
SELECT tip,
order_total,
IF(tip > 2, order_total * .75, order_total * 1.1) as New_Total
FROM customer_orders;