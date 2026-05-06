# SQL Practice –(HackerRank)

This repository contains SQL solutions for basic-level problems from HackerRank.
Focus areas include SELECT queries, filtering, string operations, REGEXP usage, sorting, and conditional logic.

## Topics Covered

SELECT statements

WHERE conditions

DISTINCT

ORDER BY

COUNT(), SUM(), AVG()

String functions

REGEXP_LIKE (Oracle)

Logical operators (AND, OR, NOT)

CASE statements

Basic triangle classification logic

## Problems Solved
🔹 Basic SELECT Queries

Revising the Select Query I

Revising the Select Query II

Select All

Select By ID

🔹 Country-Based Filtering

Japanese Cities' Attributes

Japanese Cities' Names

🔹 Weather Observation Station Series

Station 1

Station 3

Station 4

Station 5

Station 6

Station 7

Station 8

Station 9

Station 10

Station 11

Station 12

## Concepts Practiced:

DISTINCT

Even/Odd filtering using MOD

String length sorting

Vowel pattern matching

REGEXP_LIKE

Negative filtering

Duplicate counting

🔹 Conditional & Logical Problems

Higher Than 75 Marks

Employee Names

Employee Salaries

Type of Triangle

Concepts Practiced:

ORDER BY with multiple columns

CASE statement

Logical condition ordering

Triangle validation logic

Aggregate filtering

## Key Learnings

Importance of condition order in CASE statements

Difference between WHERE and HAVING

REGEXP_LIKE vs LIKE in Oracle

Execution order in SQL queries

How to structure clean and readable SQL

## Next Steps

Aggregations (GROUP BY, HAVING)

Subqueries

Joins

Advanced CASE usage


## SQL from basics again from basics

## Topic - Create & Insert 
This project contains multiple databases created in Microsoft SQL Server for practicing SQL queries.

🗂️ Databases Included
Healthcare → Patient records and diagnosis
Finance → Transaction details
Pharmacy → Medicines and expiry tracking
Automobile → Vehicle information
Education → Student records
E-Commerce → Orders and sales data
Demart → Customers, products, and inventory

⚙️ What This Project Covers
Creating databases and tables
Inserting records
Basic SQL queries (SELECT, WHERE)
Filtering data using conditions

📊 Sample Queries
Fetch all records (SELECT *)
Select specific columns
Apply conditions (WHERE age > 50, amount > 5000)
Work with dates and filters

🎯 Purpose

To practice real-world SQL scenarios across different domains like healthcare, finance, retail, and education.

## Topic - UPDATE

This project contains multiple UPDATE queries written in Microsoft SQL Server to practice real-world data modification scenarios.

⚙️ What This Covers
Updating single and multiple columns
Using WHERE conditions effectively
Working with operators:
AND, OR
BETWEEN
IN, NOT IN
LIKE (pattern matching)
Performing bulk updates
Applying calculations (e.g., salary hike)

📊 Types of Updates Included
Employee salary updates
Department & designation changes
Location modifications
Active/Inactive status updates
Conditional updates based on:
Date (hire_date)
Range (BETWEEN)
Pattern (LIKE)
Multiple values (IN)

⚠️ Important Note

Always verify before updating:
SELECT * FROM Employee_Info WHERE condition;

Use transactions for safety:
BEGIN TRANSACTION;
-- UPDATE query
ROLLBACK; -- or COMMIT;

🎯 Purpose
To build strong understanding of UPDATE statements for interviews and real-world database operations.

## Topic - DELETE, TRUNCATE & DROP

This project contains multiple DELETE operations performed on an employee dataset using Microsoft SQL Server.

🗂️ Table Used

Employee_Info-
Employee details (name, department, salary, hire date, location, status)

⚙️ What This Covers
Deleting specific records (WHERE employee_id = ?)

Conditional deletes using:
AND, OR
BETWEEN
IN, NOT IN
LIKE (pattern matching)

Deleting based on:
Salary
Department
Location
Hire date
Status (is_active)
Subquery-based delete
Table-level operations (TRUNCATE, DROP)

📊 Key Concepts
DELETE → removes selected rows
TRUNCATE → removes all rows (no condition)
DROP → deletes entire table

⚠️ Important Notes
-- Always check before delete
SELECT * FROM Employee_Info WHERE condition;

-- Use transaction for safety
BEGIN TRANSACTION;
DELETE FROM Employee_Info WHERE condition;
ROLLBACK; -- or COMMIT;

🎯 Purpose

To practice real-world delete scenarios and strengthen SQL concepts for interviews and projects.

## TOP_ORDER_BY_DISTINCT_AGGREGATE_FUNCTIONS

Marketing_Finance -
Campaign performance data (platform, impressions, clicks, budget, spend, revenue)

⚙️ What This Covers
Aliasing columns using AS
Aggregations using:
SUM, AVG, MAX

Sorting data using:
ORDER BY (ASC, DESC)
Multiple column sorting

Finding unique values using:
DISTINCT

Top records using:
TOP, TOP WITH TIES

Calculations based on:
Revenue
Budget
Clicks
Impressions

Derived metrics:
Profit (Revenue - Spend)
CTR (Clicks / Impressions)
ROI ((Revenue - Spend) / Spend)

📊 Key Concepts
SELECT → retrieve data
AS → rename columns
ORDER BY → sort results
DISTINCT → unique values
TOP → limit results

⚠️ Important Notes
-- Avoid integer division in CTR
SELECT Clicks * 1.0 / Impressions FROM Marketing_Finance;

-- Always verify before sorting/filtering
SELECT * FROM Marketing_Finance;

🎯 Purpose

To practice real-world marketing analytics queries and strengthen SQL fundamentals for interviews and projects.