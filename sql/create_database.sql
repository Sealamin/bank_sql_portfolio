-- Vytvoření databáze (primárně využívám syntax typický pro MySQL)

CREATE DATABASE BankDB;

USE BankDB;


-- Vytvoření tabulky Customers

CREATE TABLE Customers (

    customer_id INT AUTO_INCREMENT PRIMARY KEY,

    first_name VARCHAR(50) NOT NULL,

    last_name VARCHAR(50) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    phone VARCHAR(15)

);


-- Vytvoření tabulky Accounts

CREATE TABLE Accounts (

    account_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_id INT,

    account_type VARCHAR(50) NOT NULL,

    balance DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)

);


-- Vytvoření tabulky Transactions

CREATE TABLE Transactions (

    transaction_id INT AUTO_INCREMENT PRIMARY KEY,

    account_id INT,

    transaction_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    amount DECIMAL(10, 2) NOT NULL,

    transaction_type ENUM('Deposit', 'Withdrawal') NOT NULL,

    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)

);


-- Vytvoření tabulky Loans

CREATE TABLE Loans (

    loan_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_id INT,

    loan_amount DECIMAL(10, 2) NOT NULL,

    interest_rate DECIMAL(5, 2) NOT NULL,

    start_date DATE NOT NULL,

    end_date DATE NOT NULL,

    status ENUM('Active', 'Paid', 'Defaulted') NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)

);
