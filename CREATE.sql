CREATE DATABASE HEALTHCARE;
USE HEALTHCARE;

CREATE TABLE PATIENTS (
patient_id INT,
name VARCHAR(100),
gender CHAR(5),
age INT,
admission_date date,
diagnosis VARCHAR(255)
);

INSERT INTO PATIENTS 
VALUES (1,'SHANTANU','MALE',25, '2026-04-16', 'FEVER'),
(2,'VIBHOR', 'MALE', 29,'2026-01-30', 'HEADACHE'),
(3,'SARTHAL','MALE',23,'2025-03-03','FRACTURE'),
(4,'MAYANK','MALE',24,'2025-05-21','FROZEN SHOULDER'),
(5,'ANKITA','F',25,'2024-02-08','TYPHOID');



CREATE DATABASE FINANCE;
USE FINANCE;

CREATE TABLE TRANSACTIONS (
transaction_id INT,
account_number VARCHAR(20),
amount FLOAT,
transaction_type VARCHAR(20),
transaction_date DATETIME
);

INSERT INTO TRANSACTIONS VALUES
(1,'1234567890',234.90,'CURRENT','2021-02-28 23:29:59'),
(2,'2345678901',45690.87,'SAVINGS','2022-11-07 14:56:01'),
(3,'3456789012',78901.98,'NET-BANKING','2023-03-15 08:12:00'),
(4,'4567890123',45678.09,'CREDIT CARD','2026-04-17 20:40:21'),
(5,'5678901234',23456.00,'DEBIT CARD','2025-09-30 12:00:48');



CREATE DATABASE PHARMACY;
USE PHARMACY;

CREATE TABLE MEDICINES (
medicine_id INT,
name VARCHAR(100),
category VARCHAR(50),
expiry_date DATE,
price FLOAT
);

INSERT INTO MEDICINES VALUES
(1, 'Paracetamol', 'Pain Relief', '2027-05-15', 25.50),
(2, 'Amoxicillin', 'Antibiotic', '2026-12-30', 120.00),
(3, 'Cetirizine', 'Allergy', '2027-03-10', 45.75),
(4, 'Metformin', 'Diabetes', '2028-01-25', 80.20),
(5, 'Omeprazole', 'Acidity', '2026-09-18', 60.00);



CREATE DATABASE AUTOMOBILE;
USE AUTOMOBILE;

CREATE TABLE VEHICLES (
vehicle_id INT,
brand VARCHAR(50),
model VARCHAR(50),
manufacture_year INT,
price FLOAT,
fuel_type VARCHAR(20),
);

INSERT INTO VEHICLES VALUES
(1, 'TVS', 'APACHE RTR 200 4V',2025,182500.00, 'PETROL E20'),
(2, 'BAJAJ', 'PULSAR NS200',2023, 173000.00, 'PETROL E10'),
(3, 'HONDA', 'CITY', 2015, 1200000.00,'DIESEL'),
(4, 'ROYAL ENFIELD', 'BULLET 350',2021, 183000.00, 'PETROL'),
(5, 'YAMAHA','R15 V3', 2020, 152000.00,'PETROL');

CREATE DATABASE EDUCATION;
USE EDUCATION;

CREATE TABLE STUDENTS 
(student_id INT,
full_name VARCHAR(100),
grade_level VARCHAR(10),
enrollment_date DATE,
gpa FLOAT);


INSERT INTO STUDENTS (student_id, full_name, grade_level, enrollment_date, gpa) VALUES
(1, 'Devendra', '10', '2023-06-15', 8.5),
(2, 'Diya', '9', '2024-01-10', 9.1),
(3, 'Rohan', '12', '2022-07-20', 7.8),
(4, 'Sneha', '11', '2023-08-05', 8.9),
(5, 'Kunal', '10', '2024-03-12', 7.5);


CREATE DATABASE E_COMMERCE;
USE E_COMMERCE;

CREATE TABLE ORDERS (
order_id INT,
customer_name VARCHAR(100),
product_name VARCHAR(100),
quantity INT,
order_date DATE,
total_amount FLOAT,
);

INSERT INTO ORDERS VALUES
(1, 'ARJUN', 'TELEVISION',1,'2024-12-31', 34567.90),
(2, 'DEVENDRA','WHEY PROTEIN',3 ,'2020-01-16',3756.89),
(3, 'ATHARVA','SHOES',2,'2024-03-01',7890.34),
(4, 'MAYANK','T-SHIRT',5,'2026-04-02',3987.23),
(5, 'SARTHAK','WATCH',1,'2025-11-25',9871.00);





1. Display all columns from the Patients table.
SELECT * FROM PATIENTS;

2. Show only transaction_id, amount, and transaction_date from the Transactions table.
SELECT transaction_id, amount, transaction_date FROM TRANSACTIONS;

3. Retrieve name and price from the Medicines table.
SELECT name, price FROM MEDICINES;

4. Display vehicle_id, brand, model, and fuel_type from the Vehicles table.
SELECT  vehicle_id, brand, model, fuel_type FROM VEHICLES;

5. Show all columns from the Students table.
SELECT * FROM STUDENTS;

6. Retrieve order_id, customer_name, and total_amount from the Orders table
SELECT order_id, customer_name, total_amount FROM ORDERS;

7. Display name and diagnosis of all patients from the Patients table who are older than 50.
SELECT NAME, DIAGNOSIS FROM PATIENTS WHERE AGE>50;

8. Show account_number and transaction_type for transactions where the amount is greater than
5000 from the Transactions table.
SELECT ACCOUNT_NUMBER, TRANSACTION_TYPE FROM TRANSACTIONS WHERE AMOUNT>5000;

9. Retrieve name and expiry_date of all medicines that expire before '2026-01-01'.
SELECT NAME, EXPIRY_DATE FROM MEDICINES WHERE EXPIRY_DATE<'2026-01-01';

10. Display full_name and gpa of students whose gpa is greater than 3.5 from the Students table.
SELECT full_name, gpa FROM STUDENTS WHERE GPA>3.5;

CREATE DATABASE DEMART;
USE DEMART;

CREATE TABLE CUSTOMERS
(
customer_id INT,
customer_name VARCHAR(100),
contact_number VARCHAR(15),
pan_card VARCHAR(15),
adhar_card VARCHAR(20),
address VARCHAR(255),
state VARCHAR(50)
);

INSERT INTO CUSTOMERS VALUES
(1, 'Amit', '9876543210', 'ABCDE1234F', '123412341234', 'Delhi Street 1', 'Delhi'),
(2, 'Neha', '9123456780', 'PQRSX5678L', '234523452345', 'Mumbai Road 2', 'Maharashtra'),
(3, 'Rahul', '9988776655', 'LMNOP4321K', '345634563456', 'Lucknow Lane', 'Uttar Pradesh'),
(4, 'Priya', '8899001122', 'ZXCVB9876P', '456745674567', 'Ahmedabad Colony', 'Gujarat'),
(5, 'Karan', '7766554433', 'ASDFG1357H', '567856785678', 'Surat Street', 'Gujarat'),
(6, 'Sneha', '6655443322', 'QWERT2468J', '678967896789', 'Chandigarh Sector 17', 'Punjab'),
(7, 'Vikas', '5544332211', 'HJKLZ3691M', '789078907890', 'Patna Road', 'Bihar'),
(8, 'Anjali', '4433221100', 'BNMKO1472N', '890189018901', 'Jaipur Pink City', 'Rajasthan'),
(9, 'Rohit', '3322110099', 'TYUIO2583B', '901290129012', 'Kolkata Street', 'West Bengal'),
(10, 'Pooja', '2211009988', 'GHJKL7539D', '112211221122', 'Kochi Beach Road', 'Kerala');

CREATE TABLE PRODUCTS(
product_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
unit_price FLOAT,
mfg_date DATE,
exp_date DATE,
supplier_id INT
);

INSERT INTO PRODUCTS VALUES
(101, 'Milk', 'Dairy', 'Amul', 50.0, '2025-04-01', '2025-04-10', 1),
(102, 'Bread', 'Bakery', 'Britannia', 30.0, '2025-04-02', '2025-04-07', 2),
(103, 'Butter', 'Dairy', 'Amul', 55.0, '2025-03-28', '2025-05-01', 1),
(104, 'Rice', 'Grocery', 'India Gate', 80.0, '2025-01-01', '2026-01-01', 3),
(105, 'Wheat Flour', 'Grocery', 'Aashirvaad', 45.0, '2025-02-15', '2025-08-15', 3),
(106, 'Soap', 'Personal Care', 'Dove', 60.0, '2024-12-01', '2026-12-01', 4),
(107, 'Shampoo', 'Personal Care', 'Clinic Plus', 120.0, '2025-03-10', '2027-03-10', 4),
(108, 'Biscuits', 'Snacks', 'Parle', 20.0, '2025-04-01', '2025-10-01', 2),
(109, 'Cold Drink', 'Beverages', 'Coca-Cola', 40.0, '2025-03-20', '2025-09-20', 5),
(110, 'Cooking Oil', 'Grocery', 'Fortune', 150.0, '2025-02-01', '2026-02-01', 3);

CREATE TABLE STORAGE_QUANTITY(
storage_id INT,
product_id INT,
warehouse_location VARCHAR(100),
batch_number VARCHAR(50),
quantity_available INT,
quantity_sold INT,
reorder_level INT,
last_restock_date DATE,
supplier_name VARCHAR(100),
store_section VARCHAR(50)
);

INSERT INTO STORAGE_QUANTITY VALUES
(1, 101, 'Warehouse A', 'B001', 200, 50, 30, '2025-04-01', 'Amul Supplier', 'Dairy Section'),
(2, 102, 'Warehouse A', 'B002', 150, 60, 20, '2025-04-02', 'Britannia Supplier', 'Bakery Section'),
(3, 103, 'Warehouse B', 'B003', 100, 40, 25, '2025-03-28', 'Amul Supplier', 'Dairy Section'),
(4, 104, 'Warehouse C', 'B004', 500, 100, 100, '2025-01-01', 'Rice Supplier', 'Grocery Section'),
(5, 105, 'Warehouse C', 'B005', 300, 80, 50, '2025-02-15', 'Flour Supplier', 'Grocery Section'),
(6, 106, 'Warehouse D', 'B006', 250, 70, 40, '2024-12-01', 'Dove Supplier', 'Personal Care'),
(7, 107, 'Warehouse D', 'B007', 180, 90, 35, '2025-03-10', 'Clinic Plus Supplier', 'Personal Care'),
(8, 108, 'Warehouse A', 'B008', 400, 150, 60, '2025-04-01', 'Parle Supplier', 'Snacks Section'),
(9, 109, 'Warehouse B', 'B009', 350, 120, 70, '2025-03-20', 'Coke Supplier', 'Beverages Section'),
(10, 110, 'Warehouse C', 'B010', 220, 60, 45, '2025-02-01', 'Fortune Supplier', 'Grocery Section');

CREATE DATABASE DEMART;
USE DEMART;

CREATE TABLE CUSTOMERS
(
customer_id INT,
customer_name VARCHAR(100),
contact_number VARCHAR(15),
pan_card VARCHAR(15),
adhar_card VARCHAR(20),
address VARCHAR(255),
state VARCHAR(50)
);

INSERT INTO CUSTOMERS VALUES
(1, 'Amit', '9876543210', 'ABCDE1234F', '123412341234', 'Delhi Street 1', 'Delhi'),
(2, 'Neha', '9123456780', 'PQRSX5678L', '234523452345', 'Mumbai Road 2', 'Maharashtra'),
(3, 'Rahul', '9988776655', 'LMNOP4321K', '345634563456', 'Lucknow Lane', 'Uttar Pradesh'),
(4, 'Priya', '8899001122', 'ZXCVB9876P', '456745674567', 'Ahmedabad Colony', 'Gujarat'),
(5, 'Karan', '7766554433', 'ASDFG1357H', '567856785678', 'Surat Street', 'Gujarat'),
(6, 'Sneha', '6655443322', 'QWERT2468J', '678967896789', 'Chandigarh Sector 17', 'Punjab'),
(7, 'Vikas', '5544332211', 'HJKLZ3691M', '789078907890', 'Patna Road', 'Bihar'),
(8, 'Anjali', '4433221100', 'BNMKO1472N', '890189018901', 'Jaipur Pink City', 'Rajasthan'),
(9, 'Rohit', '3322110099', 'TYUIO2583B', '901290129012', 'Kolkata Street', 'West Bengal'),
(10, 'Pooja', '2211009988', 'GHJKL7539D', '112211221122', 'Kochi Beach Road', 'Kerala');

CREATE TABLE PRODUCTS(
product_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
unit_price FLOAT,
mfg_date DATE,
exp_date DATE,
supplier_id INT
);

INSERT INTO PRODUCTS VALUES
(101, 'Milk', 'Dairy', 'Amul', 50.0, '2025-04-01', '2025-04-10', 1),
(102, 'Bread', 'Bakery', 'Britannia', 30.0, '2025-04-02', '2025-04-07', 2),
(103, 'Butter', 'Dairy', 'Amul', 55.0, '2025-03-28', '2025-05-01', 1),
(104, 'Rice', 'Grocery', 'India Gate', 80.0, '2025-01-01', '2026-01-01', 3),
(105, 'Wheat Flour', 'Grocery', 'Aashirvaad', 45.0, '2025-02-15', '2025-08-15', 3),
(106, 'Soap', 'Personal Care', 'Dove', 60.0, '2024-12-01', '2026-12-01', 4),
(107, 'Shampoo', 'Personal Care', 'Clinic Plus', 120.0, '2025-03-10', '2027-03-10', 4),
(108, 'Biscuits', 'Snacks', 'Parle', 20.0, '2025-04-01', '2025-10-01', 2),
(109, 'Cold Drink', 'Beverages', 'Coca-Cola', 40.0, '2025-03-20', '2025-09-20', 5),
(110, 'Cooking Oil', 'Grocery', 'Fortune', 150.0, '2025-02-01', '2026-02-01', 3);

CREATE TABLE STORAGE_QUANTITY(
storage_id INT,
product_id INT,
warehouse_location VARCHAR(100),
batch_number VARCHAR(50),
quantity_available INT,
quantity_sold INT,
reorder_level INT,
last_restock_date DATE,
supplier_name VARCHAR(100),
store_section VARCHAR(50)
);

INSERT INTO STORAGE_QUANTITY VALUES
(1, 101, 'Warehouse A', 'B001', 200, 50, 30, '2025-04-01', 'Amul Supplier', 'Dairy Section'),
(2, 102, 'Warehouse A', 'B002', 150, 60, 20, '2025-04-02', 'Britannia Supplier', 'Bakery Section'),
(3, 103, 'Warehouse B', 'B003', 100, 40, 25, '2025-03-28', 'Amul Supplier', 'Dairy Section'),
(4, 104, 'Warehouse C', 'B004', 500, 100, 100, '2025-01-01', 'Rice Supplier', 'Grocery Section'),
(5, 105, 'Warehouse C', 'B005', 300, 80, 50, '2025-02-15', 'Flour Supplier', 'Grocery Section'),
(6, 106, 'Warehouse D', 'B006', 250, 70, 40, '2024-12-01', 'Dove Supplier', 'Personal Care'),
(7, 107, 'Warehouse D', 'B007', 180, 90, 35, '2025-03-10', 'Clinic Plus Supplier', 'Personal Care'),
(8, 108, 'Warehouse A', 'B008', 400, 150, 60, '2025-04-01', 'Parle Supplier', 'Snacks Section'),
(9, 109, 'Warehouse B', 'B009', 350, 120, 70, '2025-03-20', 'Coke Supplier', 'Beverages Section'),
(10, 110, 'Warehouse C', 'B010', 220, 60, 45, '2025-02-01', 'Fortune Supplier', 'Grocery Section');