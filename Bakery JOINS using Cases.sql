# JOIN Use Cases

SELECT DISTINCT p.product_name, 
ot.unit_price, 
p.sale_price,
p.units_in_stock,
p.sale_price - ot.unit_price as Profit,
(p.sale_price - ot.unit_price) * p.units_in_stock as Potential_Profit
FROM ordered_items ot
JOIN products p
	USING(product_id)
ORDER BY Potential_Profit DESC;
 

SELECT * 
FROM supplier_delivery_status;
SELECT * 
FROM ordered_items;
SELECT * 
FROM suppliers;


SELECT ot.order_id, sds.name, ot.status, ot.shipped_date, s.name
FROM ordered_items ot
JOIN supplier_delivery_status sds
	ON ot.status = sds.order_status_id
JOIN suppliers s 
	ON ot.shipper_id = s.supplier_id
WHERE sds.name <> 'Delivered'
AND YEAR(shipped_date) < YEAR(NOW()) - 2
;
