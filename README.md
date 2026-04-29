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

