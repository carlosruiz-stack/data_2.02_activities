#Select districts and salaries (from the district table) where salary is greater than 10000. 
#Suggestion is to use the case study extended here (you have it already after getting the 2.01 activity) 
#to work out which columns are required here. Return columns as district_name and average_salary.
#unable to find salaries on the entire DB

#Select those loans whose contract finished and were not paid: 

SELECT loan_id FROM loan
WHERE status = 'B';

#Select cards of type junior. Return just first 10 in your query.
SELECT card_id FROM card
LIMIT 10;
WHERE type = 'junior'

#Select those loans whose contract finished and not paid back. 
#Return the debt value from the status you identified in the last activity, together with loan_id and account_id.

SELECT loan_id, amount - payments, account_id
FROM loan; 

#Calculate the urban population for all districts. 

SELECT 'population' = A10*A5, 
'population'= A10*A6,
'population'= A10*A7,
'population'= A10*A8,
'population'= A10*A4
FROM district; 

#Get all junior cards issued last year.

SELECT card_id
FROM card
WHERE type = 'junior';

#Get the first 10 transactions for withdrawals that are not in cash. 

SELECT trans_id
FROM trans
WHERE operation != 'VYBER'
LIMIT 10;

#Refine your query from last activity on loans whose contract finished and not paid back - filtered to loans where they were left with a debt bigger than 1000. 
Return the debt value together with loan_id and account_id. 
Sort by the highest debt value to the lowest.

SELECT loan_id, account_id, amount-payments
FROM loan
WHERE status ='B' AND amount-payments > 1000
order by amount-payments DESC;

#Get the biggest and the smallest transaction with non-zero values in the database (use the trans table in the bank database).

SELECT MAX(amount)
FROM trans
WHERE amount != 0;

#Get account information with an extra column year showing the opening year as 'YY'. Eg., 1995 will show as 95.

SELECT LEFT(date,2) AS ExtracString
FROM account;
