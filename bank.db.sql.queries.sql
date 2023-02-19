SELECT loan_id FROM loan
WHERE status = 'B';

SELECT card_id FROM card
WHERE type = 'junior';

SELECT loan_id, amount - payments, account_id
FROM loan; 

SELECT 'population' = A10*A5, 
'population'= A10*A6,
'population'= A10*A7,
'population'= A10*A8,
'population'= A10*A4
FROM district; 

SELECT card_id
FROM card
WHERE type = 'junior';

SELECT trans_id
FROM trans
WHERE operation != 'VYBER'
LIMIT 10;

SELECT loan_id, account_id, amount-payments
FROM loan
WHERE status ='B'
order by amount-payments DESC;





SELECT MAX(amount)
FROM trans
WHERE amount != 0;

SELECT LEFT(date,2) AS ExtracString
FROM account;