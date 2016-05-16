--1. Get all users from Chicago
SELECT * FROM syntax_practice
	WHERE city LIKE 'chi%';
  --2. Get all users w/usernames that contain the letter a
SELECT * FROM syntax_practice
	WHERE username LIKE '%a%';
  --3. Update all records w/account balance 0.00 & transactions_attempted 0 w/new balance of 10.00
UPDATE syntax_practice
	SET account_balance = 10.00
	WHERE account_balance = 0.00
	AND transactions_attempted = 0;
--4.Select all users that have attempted 9+ transactions_attempted
SELECT * FROM syntax_practice
	WHERE transactions_attempted >= 9;
  --5.  Get the username/account balance of the 3 users w/highest balance fm high to low
  SELECT username, account_balance FROM syntax_practice
    ORDER BY account_balance DESC
    LIMIT 3;
--6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice
  ORDER BY account_balance ASC
  LIMIT 3;
--7. Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice
	WHERE account_balance > 100.00;
  --8. Add a new record.
INSERT INTO syntax_practice 
	 VALUES (9,'samantha', 'st. paul', 0, 0, 10.00);
   --9. Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions
DELETE FROM syntax_practice
	WHERE city LIKE 'mia%'
	OR city LIKE 'pho%'
	AND transactions_completed < 5;
