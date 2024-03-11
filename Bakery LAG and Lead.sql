# Lag and Lead function 

SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id)
FROM employees;

SELECT *, lag_column - salary AS pay_discrepancy
FROM (
SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_column
FROM employees) as lag_table;


SELECT *, IF(salary > lag_column, 'More', 'Less')
FROM (
SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_column
FROM employees) as lag_table;