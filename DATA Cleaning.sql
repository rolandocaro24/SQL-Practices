SELECT * 
FROM bakery.customer_sweepstakes;

# ALTER TABLE customer_sweepstakes RENAME COLUMN `ï»¿sweepstake_id` TO `sweepstake_id`;

SELECT customer_id, COUNT(customer_id)
FROM bakery.customer_sweepstakes
GROUP BY customer_id
HAVING COUNT(customer_id) > 1
; #Identifiying 

SELECT * 
FROM (
SELECT customer_id, 
ROW_NUMBER () OVER(PARTITION BY customer_id ORDER BY customer_id) as row_num 
FROM bakery.customer_sweepstakes) AS table_
WHERE row_num > 1;

DELETE FROM customer_sweepstakes
WHERE sweepstake_id IN (

	SELECT sweepstake_id
	FROM (
		SELECT sweepstake_id, 
		ROW_NUMBER () OVER(PARTITION BY customer_id ORDER BY  customer_id) as row_num 
		FROM bakery.customer_sweepstakes) AS table_
		WHERE row_num > 1
        );



