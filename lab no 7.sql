CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
SHOW DATABASES;
describe Customers;
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
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

use BankingDB;
Alter table Customers
modify Phone varchar (20);
describe Customers;
use BankingDB;
describe Customers;
ALTER TABLE Customers
ADD DateOfBirth DATE;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
alter table accounts
Add constraint chk_MinBalance
Check (Balance >=1000);
DROP TABLE AccountBranches;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,

    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);
ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;
ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);
DESCRIBE Customers;
use BankingDB;
insert into Customers
(customerID, firstname, lastname, email, phone, accountcreationdate, dateofbirth)
values
(101, 'kirtan', 'more', 'kirtan123@gmail.com', '912345678912', '2025-06-01', '1995-03-15'),
(102, 'Priya', 'Patil', 'priya.patil@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

 Insert into transactions
 (Transactionid, accountid, transactiondate, amount, transactiontype)
 values
 (301, 201, '2025-06-01', 5000, 'creddit'),
 (302, 201, '2025-06-02', 2000, 'debit');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(202, 102, 'Current', 40000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);
Select * from customers;
Select * from accounts;
insert into branches
(branchID, Branchname, branchaddress, branchphone)
value
(401, 'andheri branch', 'mumbai andheri east', '9871111111'),
(402, 'borivali branch', 'mumbai borivali west', '9872222222');
 insert into AccountBranches
 (AccountID, BranchId, AssignmentDate)
 values
 (201, 401, '2025-05-01'),
 (201,402, '2025-05-02');
 
 update customers
 set phone ='9137687219'
 where CustomerID = 101;
 select * from Customers where CustomerId = 101;
 
 update    Customers
 Set Email = 'kirtan.more123@gmail.com'
 where CustomerId = 101;
 select * from Customers;
 
 delete from transactions
 where trasactionID = 302;
 select * From Transactions;
 
 Delete From Accounts
 Where AccountID =202;
 select * from accounts;
 
 use bankingDB;
#DQL Demonstration
select * from coustomers;
select * from accounts;
 select * from branches;
 select * from loans;
 select * from  accountbranches;

create  database SQL_PRactice;
use SQL_PRactice;
use bankingDB;
select * from accounts
where AccountType = 'Savings';

select * from accounts
where Balance >25000;
select * from transactions
where amount between 5000 and 20000;
select * from transactions
where Amount >= 5000 and Amount <= 20000;
select * from customers
where CustomerID in (101,102,103);
SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';
 
select * from customers
order by FirstName desc;

select * from accounts
order by Balance desc ;
 select distinct accountType
 from accounts;
 select * from accounts
 order by Balance desc limit 1 offset 2;
 
 SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;
 
select * from transactions
order by Amount desc;
