
## Total customers
SELECT COUNT(*) AS total_customers
FROM Customers;
## Total_customers_by_customer_type
SELECT
    CustomerTypeID,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY CustomerTypeID
ORDER BY total_customers DESC;
##Average Interest Rate
SELECT
    ROUND(AVG(InterestRate)*100,2) AS avg_interest_rate_percent
FROM Loans;

##What are the no. of customers having more than one account
SELECT
    CustomerID,
    COUNT(AccountID) AS total_accounts          
FROM Accounts                               to verify
GROUP BY CustomerID
HAVING COUNT(AccountID) > 1;

## Total transaction amount?

SELECT SUM(amount)
FROM transactions;
##Average Balance
SELECT AVG(balance)
FROM accounts;
##Highest Loan
SELECT MAX(principalamount)
FROM loans;
##Transactions by Type
SELECT transactiontypeid,
       COUNT(*) AS total_transactions
FROM transactions
GROUP BY transactiontypeid;
##Branch Wise Transaction Amount
SELECT branchid,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY branchid;
##Branches With Large Transaction Volume
SELECT branchid,
       SUM(amount) AS total
FROM transactions
GROUP BY branchid
HAVING SUM(amount) > 1000000;
##Loanstatus
SELECT
    ls.StatusName,
    COUNT(*) AS total_loans
FROM Loans l
JOIN LoanStatus ls
    ON l.LoanStatusID = ls.LoanStatusID
GROUP BY ls.StatusName;
##Unique Overdue customers
SELECT COUNT(DISTINCT c.customerid) AS overdue_customers
FROM customers c
JOIN accounts a
ON c.customerid = a.customerid
JOIN loans l
ON a.accountid = l.accountid
JOIN loanstatus ls
ON l.loanstatusid = ls.loanstatusid
WHERE ls.statusname = 'Overdue';
##high risk customers 
SELECT
    c.CustomerID,
    c.FirstName || ' ' || c.LastName AS Full_Name,
    COUNT(*) AS overdue_loans
FROM Customers c
JOIN Accounts a
    ON c.CustomerID = a.CustomerID
JOIN Loans l
    ON a.AccountID = l.AccountID
JOIN LoanStatus ls
    ON l.LoanStatusID = ls.LoanStatusID
WHERE ls.StatusName = 'Overdue'
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY overdue_loans DESC;
##highest transactions customers
SELECT
    c.CustomerID,
    c.FirstName||' '||c.lastname as full_name,
 COUNT (*) AS total_transactions
FROM Customers c
JOIN Accounts a
    ON c.CustomerID = a.CustomerID
JOIN Transactions t
    ON a.AccountID = t.AccountOriginID
GROUP BY
    c.CustomerID,
    c.FirstName,c.lastname
ORDER BY total_transactions DESC
LIMIT 10;
##Top 10 Customers by Balance
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(a.Balance) AS total_balance
FROM Customers c
JOIN Accounts a
ON c.CustomerID = a.CustomerID
GROUP BY c.CustomerID,c.FirstName,c.LastName
ORDER BY total_balance DESC
LIMIT 10;
##Top 10 Customers by Balance
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(a.Balance) AS total_balance
FROM Customers c
JOIN Accounts a
ON c.CustomerID = a.CustomerID
GROUP BY c.CustomerID,c.FirstName,c.LastName
ORDER BY total_balance DESC
LIMIT 10;
##Branchwisetop5transactions
WITH branch_transactions AS (
    SELECT
        BranchID,
        TransactionID,
        Amount,
        ROW_NUMBER() OVER (
            PARTITION BY BranchID
            ORDER BY Amount DESC
        ) AS rn
    FROM Transactions
)
SELECT *
FROM branch_transactions
WHERE rn <= 5;
##Who are the Top 10 Customers by Estimated Lifetime Value
SELECT
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS full_name,
    COALESCE(SUM(a.Balance), 0)
    + COALESCE(SUM(l.PrincipalAmount), 0)
    + COALESCE(SUM(t.Amount), 0) AS lifetime_value
FROM Customers c
LEFT JOIN Accounts a
    ON c.CustomerID = a.CustomerID
LEFT JOIN Loans l
    ON a.AccountID = l.AccountID
LEFT JOIN Transactions t
    ON a.AccountID = t.AccountOriginID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName
ORDER BY lifetime_value DESC
LIMIT 10;
## NO. OF Dormat accounts
SELECT a.accountid
FROM accounts a
LEFT JOIN transactions t
ON a.accountid = t.accountoriginid
WHERE t.transactionid IS NULL;
##High Loan Risk Customers
SELECT c.customerid,
       c.firstname,
       SUM(l.principalamount) AS total_loan
FROM customers c
JOIN accounts a
ON c.customerid = a.customerid
JOIN loans l
ON a.accountid = l.accountid
GROUP BY c.customerid, c.firstname
ORDER BY total_loan DESC;
##Identify accounts requiring further investigation due to high transaction frequency
SELECT accountoriginid,
       COUNT(*) AS txn_count,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY accountoriginid
HAVING COUNT(*) > 50; 