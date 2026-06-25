use bankingdb;

SELECT sum(balance) as Total_Balance from accunts
where AccountTypes="savings";

SELECT AVG(Balance) AS average_balance
FROM Accounts;

SELECT max(balance) as highest_balance from accounts ;
select min(balance) as lowest_balance from accounts;
select count(phone) as total_customer from customers;




select AccountType,sum(Balance) as Total_Balance from Accouts  group by AccountType;


select accountType, max(Balance) as Total_Balance from accounts group by AccountType;

select AccountType , balance from accounts
where balance >=25000;


select AccountType , sum(balance) as Total_Balance from Accounts
group by AccountType

having sum(balance) >=25000; 









