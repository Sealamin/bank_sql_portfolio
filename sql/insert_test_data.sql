-- Vložení  testových zákazníků

INSERT INTO Customers (first_name, last_name, email, phone) VALUES

('Petr', 'Fiala', 'fialap@psp.cz', '542214893'),

('Alena', 'Schillerová', 'schillerovaa@psp.cz', NULL),

('Andrej', 'Babiš', 'babisa@psp.cz', NULL);

-- Vložení účtů

INSERT INTO Accounts (customer_id, account_type, balance) VALUES

(1, 'Checking', 1500.00),

(1, 'Savings', 3000.00),

(2, 'Checking', 2000.00),

(3, 'Savings', 5000.00);

-- Vložení transakcí

INSERT INTO Transactions (account_id, amount, transaction_type) VALUES

(1, 200.00, 'Deposit'),

(1, 50.00, 'Withdrawal'),

(2, 100.00, 'Deposit'),

(3, 300.00, 'Withdrawal');

-- Vložení půjček

INSERT INTO Loans (customer_id, loan_amount, interest_rate, start_date, end_date, status) VALUES

(1, 5000.00, 5.00, '2023-01-01', '2025-01-01', 'Active'),

(2, 10000.00, 4.50, '2022-05-15', '2024-05-15', 'Paid'),

(3, 15000.00, 6.00, '2023-03-01', '2026-03-01', 'Defaulted');
