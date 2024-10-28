-- Testovací queries pro ověření správného fungování databáze aplikace

-- Získání všech fiktivních zákazníků
SELECT * FROM Customers;

-- Výběr všech účtů a jejich zákazníků
SELECT a.account_id, a.account_type, a.balance, c.first_name, c.last_name

FROM Accounts a

JOIN Customers c ON a.customer_id = c.customer_id;

-- Získání všech transakcí konkrétního účtu
SELECT * FROM Transactions WHERE account_id = 1;

-- Získání všech půjček a jejich zákazníků
SELECT l.loan_id, l.loan_amount, l.interest_rate, c.first_name, c.last_name

FROM Loans l

JOIN Customers c ON l.customer_id = c.customer_id;

-- Získání finálního zůstatku pro každého zákazníka
SELECT c.customer_id, c.first_name, c.last_name, SUM(a.balance) AS total_balance

FROM Customers c

JOIN Accounts a ON c.customer_id = a.customer_id

GROUP BY c.customer_id;

-- Získání všech transakcí a jejich účtů
SELECT t.transaction_id, t.transaction_date, t.amount, t.transaction_type, a.account_type

FROM Transactions t

JOIN Accounts a ON t.account_id = a.account_id;

-- Zkouška aktualizace zůstatku na konkrétním účtu
UPDATE Accounts
  
SET balance = balance  + 100.00

WHERE account_id  = 1;

-- Zkouška smamzání konkrétního zákazníka aplikace
DELETE FROM Customers WHERE customer_id = 3;

-- Získání všech aktivních půjček
SELECT * FROM Loans WHERE status = 'Active';

-- Získání celkového počtu transakcií
SELECT COUNT(*) AS total_transactions FROM Transactions;


