CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);


CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    
    CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
    CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
USE BankingDB;
DESC customers;


use bankingdb;
ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000

ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);
DESCRIBE customers;


ALTER TABLE Customers
ADD DateOfBirth DATE;
 
 
 lab no:2
 
 
 INSERT INTO customers
 (CUSTOMERID,FIRSTNAME,LASTNAME,EMAIL,PHONE,ACCOUNTCREATIONDATE,DATEOFBIRTH)
 VALUES
 (101,'amit','joshi','amit.joshhi@gmail.com','9123456780','2025-06-01','1995-02-03'),
('102','rohit','satpute','rohitsatpute@gmail.com','9124362536','2021-03-04','1980-05-06');




INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);


INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);


#TRANSACTIONS
INSERT INTO transactions
(TransactionID,AccountID,TransactionDate,Amount,TransactionType)
VALUES
(301,201,'2025-06-01','5000','credit'),
(302,201,'2025-06-02','4000','credit');

#Branches
INSERT INTO branches
(BranchID,BranchName,branchAddress,BranchPhone)
VALUES
(401,'Andheri Branch','Mumbai Andheri East','97828537256'),
(402,'Borivali Branch','Mumbai Borivali branch','7543687678');

#Account Branches
INSERT INTO branches
(AccountID,BranchID,AssignmentDate)
(201,401,'2025-05-01'),
(202,402,'2025-05-02');

#update
UPDATE customers
set phone='9518757764'
WHERE customerID=102;
SELECT * FROM CUSTOMERS;


UPDATE customers
set phone='9999999999'
WHERE customerID=101;
SELECT * FROM CUSTOMERS;

#EMAIL
UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;
 
 

#delete
delete from Transactions
where TransactionID=302;


DELETE FROM Accounts
WHERE AccountID = 202;
select * from account branch;




DELETE FROM Transactions
WHERE transactionID=302;
select * from transactions;

select * from transactions;


#DQL Demonstration
USE bankingDB;
SELECT * FROM customers;
SELECT * FROM ACCOUNTS;



use bankingdb; 
#DQL DEMONSTRATION
SELECT * FROM CUSTOMERS;
SELECT * FROM ACCOUNTS;


CREATE Database SQL_practice;
use sql_practice ;

SELECT * from accounts;
SELECT * FROM accounts
WHERE balance >25000;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;
SELECT * FROM TRANSACTIONS 
WHERE AMOUNT >=5000
AND AMOUNT <=20000;

SELECT * FROM CUSTOMERS
WHERE customer_id in (101,102,103);
SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

SELECT * FROM Customers
ORDER BY FirstName ASC;


SELECT * FROM Customers
ORDER BY FirstName desc;

SELECT DISTINCT AccountType
FROM Accounts;

SELECT *
FROM Accounts
ORDER BY Balance DESC 
limit 3 offset 2;

SELECT *
FROM Transactions
ORDER BY AMOUNT DESC ;




