# Banking Analytics Using SQL

## Project Overview

This project analyzes a banking dataset using PostgreSQL to extract meaningful business insights related to customers, accounts, transactions, and loans. The objective is to demonstrate SQL skills ranging from basic querying to advanced analytical techniques such as joins, aggregations, Common Table Expressions (CTEs), subqueries, and window functions.

---

## Tools Used

* PostgreSQL
* SQL
* Microsoft Excel (Data Cleaning)
* Git & GitHub

---

## Dataset Description

The dataset consists of multiple banking-related tables:

* Customers
* Accounts
* Transactions
* Loans
* Loan Status
* Account Types
* Transaction Types
* Addresses
* Branches

These tables were connected using primary and foreign key relationships to perform business analysis.

---

## Data Cleaning

Before importing the data into PostgreSQL, the dataset was cleaned using Microsoft Excel.

Cleaning steps included:

* Removing duplicate records
* Handling missing values
* Standardizing data formats
* Verifying column consistency
* Validating data types before database import

---

## SQL Concepts Used

### Basic SQL

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING

### Intermediate SQL

* INNER JOIN
* LEFT JOIN
* Aggregate Functions
* CASE Statements
* Subqueries

### Advanced SQL

* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions
* Customer Segmentation
* Business Analytics Queries

---

## Business Questions Solved

### Customer Analysis

1. Top 10 Customers by Estimated Lifetime Value
2. Customers with Multiple Accounts
3. Customers with Overdue Loans
4. High-Risk Customers Based on Loan Status

### Account Analysis

5. Account Balance Distribution
6. Active vs Inactive Accounts
7. Top Accounts by Balance

### Transaction Analysis

8. Top 10 Customers by Number of Transactions
9. High Transaction Activity Accounts
10. Branch-wise Transaction Volume
11. Total Transaction Amount by Transaction Type
12. Largest Transactions in the Database

### Loan Analysis

13. Loan Status Distribution
14. Total Loan Amount by Status
15. Customers with Overdue Loans
16. High Loan Exposure Customers

---

## Sample Analysis

### Top 10 Customers by Estimated Lifetime Value

**Business Question:**
Which customers contribute the highest overall value to the bank based on account balances, loan amounts, and transaction activity?

**Description:**
Calculated an estimated customer lifetime value by combining account balances, loan amounts, and transaction amounts to identify the bank's most valuable customers.

---

### High Transaction Activity Accounts

**Business Question:**
Which accounts exhibit unusually high transaction activity and may require further investigation?

**Description:**
Identified accounts with more than 50 transactions and flagged them as high-activity accounts for monitoring and risk assessment.

---

### High-Risk Customers

**Business Question:**
Which customers currently have overdue loans?

**Description:**
Analyzed customer loan records and identified customers with overdue loans to support risk management and collection strategies.

---

## Key Insights

* Identified customers generating the highest financial value.
* Detected accounts with unusually high transaction activity.
* Evaluated loan portfolio risk through overdue loan analysis.
* Measured customer engagement using transaction frequency.
* Generated business-focused insights using SQL analytics.

---

## Repository Structure

Banking-SQL-Analytics/

├── Dataset/

├── SQL Queries/

│ ├── Basic_Queries.sql

│ ├── Intermediate_Queries.sql

│ ├── Advanced_Queries.sql

│ └── Business_Analysis.sql

├── Screenshots/

├── README.md

---

## Skills Demonstrated

* Relational Database Analysis
* Data Cleaning
* SQL Query Optimization
* Business Intelligence
* Data Exploration
* Analytical Problem Solving
* Banking Domain Analytics

---

## Author

Kanika Pandey


 Data Analyst | SQL | PostgreSQL | Data Analytics
