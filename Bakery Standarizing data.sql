#Standarizing Data

SELECT phone 
FROM customer_sweepstakes
;

SELECT phone, REGEXP_REPLACE(phone, '[()-/+]','')
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes 
SET phone = REGEXP_REPLACE(phone, '[()-/+]','')
;


SELECT phone, CONCAT(SUBSTRING(phone,1,3),'-', SUBSTRING(phone,4,3),'-', SUBSTRING(phone,7,4))
FROM customer_sweepstakes
WHERE phone <> '';


UPDATE customer_sweepstakes
SET phone =  CONCAT(SUBSTRING(phone,1,3),'-', SUBSTRING(phone,4,3),'-', SUBSTRING(phone,7,4))
WHERE phone <> '';





SELECT * 
FROM customer_sweepstakes;


SELECT birth_date, 
STR_TO_DATE(birth_date, '%m/%d/%Y'),
STR_TO_DATE(birth_date, '%Y/%d/%m')
FROM customer_sweepstakes;

 
SELECT birth_date, 
IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), STR_TO_DATE(birth_date, '%Y/%d/%m')),
STR_TO_DATE(birth_date, '%m/%d/%Y'),
STR_TO_DATE(birth_date, '%Y/%d/%m')
FROM customer_sweepstakes;


# UPDATE customer_sweepstakes 
#SET birth_date = IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), STR_TO_DATE(birth_date, '%Y/%d/%m'))
#;
 
#UPDATE customer_sweepstakes 
#SET birth_date = CASE 
#WHEN STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL THEN STR_TO_DATE(birth_date, '%m/%d/%Y')
#WHEN STR_TO_DATE(birth_date, '%m/%d/%Y') IS NULL THEN STR_TO_DATE(birth_date, '%Y/%d/%m')
#END 
#;


SELECT birth_date, CONCAT(SUBSTRING(birth_date,9,2),'/', SUBSTRING(birth_date,6,2),'/', SUBSTRING(birth_date,1,4))
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET birth_date =  CONCAT(SUBSTRING(birth_date,9,2),'/', SUBSTRING(birth_date,6,2),'/', SUBSTRING(birth_date,1,4))
WHERE sweepstake_id IN (9,11);

SELECT * 
FROM customer_sweepstakes;

UPDATE customer_sweepstakes 
SET birth_date = STR_TO_DATE(birth_date, '%m/%d/%Y')
;





SELECT  `Are you over 18?`
FROM customer_sweepstakes;


SELECT  `Are you over 18?`,
CASE 
	WHEN `Are you over 18?` = 'YES' THEN 'Y'
    WHEN `Are you over 18?` = 'NO' THEN 'N'
    ELSE `Are you over 18?`
    END 
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET `Are you over 18?` = CASE 
	WHEN `Are you over 18?` = 'YES' THEN 'Y'
    WHEN `Are you over 18?` = 'NO' THEN 'N'
    ELSE `Are you over 18?`
    END 
    ;
    
    
    SELECT * 
    FROM customer_sweepstakes;
    