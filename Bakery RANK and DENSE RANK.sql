# Rank and Dense_Rank 

SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary)
FROM employees;

SELECT *
FROM (
SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary) as rank_row
FROM employees) AS ranked 
WHERE rank_row < 3;

SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as rank_,
Dense_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dense_
FROM employees;