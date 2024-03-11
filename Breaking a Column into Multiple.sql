#Breaking Columns into Multiple Columns 

SELECT * 
FROM customer_sweepstakes;


SELECT address, substring_index(address, ',',1), substring_index(address, ',',-1) 
FROM customer_sweepstakes
;

SELECT address, substring_index(address, ',',1) as addy,
Substring_index(substring_index(address, ',',2), ',',-1) as city,
substring_index(address, ',',-1) as state
FROM customer_sweepstakes
;

ALTER TABLE customer_sweepstakes
ADD COLUMN street VARCHAR(50) AFTER address
;

ALTER TABLE customer_sweepstakes
ADD COLUMN city VARCHAR(50) AFTER street,
ADD COLUMN state VARCHAR(50) AFTER city
;


UPDATE customer_sweepstakes
SET street =  substring_index(address, ',',1);

UPDATE customer_sweepstakes
SET state = substring_index(address, ',',-1) ;

UPDATE customer_sweepstakes
SET city = Substring_index(substring_index(address, ',',2), ',',-1);

SELECT state, UPPER(state) 
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET state = UPPER(state);

SELECT * 
FROM customer_sweepstakes;

SELECT city, TRIM(city) 
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET city = TRIM(city);

UPDATE customer_sweepstakes
SET state = TRIM(state);