USE EMPLOYEE;
 CREATE TABLE Online_Orders 
(order_id INT PRIMARY KEY,     
customer_name VARCHAR(100),     
product_name VARCHAR(100),     
category VARCHAR(50),     
quantity INT,     
unit_price DECIMAL(10,2),     
order_date DATE,    
delivery_status VARCHAR(50),     
payment_method VARCHAR(50),     
shipping_city VARCHAR(100),     
shipping_state VARCHAR(100),     
rating INT,
feedback_submitted BIT ); 

INSERT INTO Online_Orders VALUES 
(1, 'Amit Kumar', 'Laptop', 'Electronics', 1, 55000, '2024-01-10', 'Delivered', 'Credit Card', 'Delhi', 'Delhi', 5, 1), 
(2, 'Neha Sharma', 'Mobile', 'Electronics', 2, 20000, '2024-01-15', 'Delivered', 'UPI', 'Mumbai', 'Maharashtra', 4, 1), 
(3, 'Ravi Joshi', 'Headphones', 'Accessories', 3, 1500, '2024-02-01', 'Shipped', 'Cash', 'Pune', 'Maharashtra', 3, 0), 
(4, 'Divya Nair', 'Office Chair', 'Furniture', 1, 7000, '2024-02-05', 'Delivered', 'Net Banking', 'Bengaluru', 'Karnataka', 5, 1), 
(5, 'Manoj Mehta', 'Bookshelf', 'Furniture', 1, 4500, '2024-02-10', 'Cancelled', 'Credit Card', 'Chennai', 'Tamil Nadu', 2, 0), 
(6, 'Pooja Verma', 'Monitor', 'Electronics', 2, 12000, '2024-03-01', 'Delivered', 'UPI', 'Hyderabad', 'Telangana', 4, 1), 
(7, 'Arjun Singh', 'Mouse', 'Accessories', 5, 800, '2024-03-05', 'Delivered', 'Cash', 'Delhi', 'Delhi', 5, 1), 
(8, 'Sneha Patel', 'Keyboard', 'Accessories', 2, 1000, '2024-03-08', 'Pending', 'Credit Card', 'Ahmedabad', 'Gujarat', 3, 0), 
(9, 'Rahul Yadav', 'Water Bottle', 'Home Essentials', 4, 300, '2024-03-10', 'Delivered', 'UPI', 'Lucknow', 'Uttar Pradesh', 4, 1), 
(10, 'Isha Desai', 'Cookware Set', 'Kitchen', 1, 3500, '2024-03-15', 'Delivered', 'Net Banking', 'Surat', 'Gujarat', 5, 1), 
(11, 'Vikram Rao', 'Table Lamp', 'Furniture', 1, 1500, '2024-03-20', 'Delivered', 'Cash', 'Kochi', 'Kerala', 4, 1), 
(12, 'Karan Kapoor', 'Router', 'Electronics', 1, 2500, '2024-03-22', 'Cancelled', 'Credit Card', 'Bhopal', 'Madhya Pradesh', 2, 0), 
(13, 'Meena Shah', 'Bluetooth Speaker', 'Accessories', 1, 3000, '2024-03-25', 'Delivered', 'UPI', 'Jaipur', 'Rajasthan', 5, 1), 
(14, 'Shalini Reddy', 'Notebook', 'Stationery', 10, 50, '2024-03-28', 'Delivered', 'Cash', 'Chennai', 'Tamil Nadu', 4, 1),
(15, 'Nikhil Rao', 'Pen Set', 'Stationery', 5, 100, '2024-04-01', 'Shipped', 'Credit Card', 'Nagpur', 'Maharashtra', 3, 0), 
(16, 'Anjali Chauhan', 'Power Bank', 'Electronics', 1, 1800, '2024-04-05', 'Delivered', 'Net Banking', 'Patna', 'Bihar', 4, 1),
(17, 'Ritesh Jain', 'Curtains', 'Home Essentials', 2, 2000, '2024-04-10', 'Pending', 'UPI', 'Indore', 'Madhya Pradesh', 3, 0), 
(18, 'Payal Sinha', 'Toaster', 'Kitchen', 1, 2200, '2024-04-12', 'Delivered', 'Credit Card', 'Ranchi', 'Jharkhand', 5, 1), 
(19, 'Saurabh Deshmukh', 'Study Table', 'Furniture', 1, 8000, '2024-04-15', 'Delivered', 'Cash', 'Bengaluru', 'Karnataka', 4, 1), 
(20, 'Tanya Gupta', 'Wall Art', 'Home Decor', 3, 1200, '2024-04-18', 'Shipped', 'Net Banking', 'Delhi', 'Delhi', 5, 1); 

--1.	Find the total quantity ordered for each product_name.
SELECT product_name,SUM(quantity) AS QUANTITY_ORDERED FROM Online_Orders GROUP BY product_name;

--2.	List each category and the total number of orders in that category.
SELECT CATEGORY,COUNT(*) AS TOTAL_ORDERS FROM Online_Orders GROUP BY category;

--3.	Calculate the total revenue (quantity * unit_price) for each customer_name.
SELECT customer_name, sum(quantity*unit_price) AS TOTAL_REVENUE FROM Online_Orders GROUP BY customer_name;

--4.	Count the number of distinct products ordered per category.
SELECT category, COUNT(DISTINCT product_name) AS NUMBER_OF_DISTINCT_PRODUCTS_PER_CATEGORY FROM Online_Orders GROUP BY category;


--5.	Show the total number of orders for each payment_method.
SELECT payment_method, COUNT(*) AS NUMBER_OF_ORDERS FROM Online_Orders GROUP BY payment_method;

--6.	Find customers who have ordered more than 3 items in total (sum of quantity).
SELECT customer_name, SUM(quantity) AS NUMBER_OF_ITEMS FROM Online_Orders GROUP BY customer_name HAVING SUM(quantity)>3;

--7.	Show product names that have earned more than ₹10,000 in total revenue.
SELECT product_name, SUM(quantity*unit_price) AS TOTAL_REVENUE FROM Online_Orders GROUP BY product_name HAVING SUM(quantity*unit_price)>10000;

--8.	List categories where the total quantity ordered is more than 5 units.
SELECT category, SUM(quantity) AS TOTAL_QUANTITY FROM Online_Orders GROUP BY category HAVING SUM(quantity)>5;

--9.	Show customers who have placed more than 1 order.
SELECT customer_name, COUNT(*) AS TOTAL_ORDERS FROM Online_Orders GROUP BY customer_name HAVING COUNT(*)>1;

--10.	List payment methods used in more than 3 orders.S
SELECT payment_method, COUNT(*) AS TIMES_USED FROM Online_Orders GROUP BY payment_method HAVING COUNT(*)>3;

--11.	Find the total revenue per category for orders placed after '2024-03-01'.
SELECT category, SUM(quantity*unit_price) AS TOTAL_REVENUE  FROM Online_Orders WHERE order_date>'2024-03-01' GROUP BY category;

--12.	List each city (use shipping_address if added) and total revenue where delivery_status = 'Delivered'.
SELECT shipping_city, SUM(quantity*unit_price) AS TOTAL_REVENUE  FROM Online_Orders WHERE delivery_status='DELIVERED' GROUP BY shipping_city;

--13.	Show total number of orders per category where payment method is not 'Cash'.
SELECT category, COUNT(*) AS TOTAL_ORDERS  FROM Online_Orders WHERE payment_method !='CASH' GROUP BY category;

--14.	Find the total quantity per product where order date is in March 2024.
SELECT product_name, SUM(quantity) AS QUANTITY
FROM ONLINE_Orders WHERE order_date>='2024-03-01' AND order_date<='2024-03-31'
GROUP BY product_name;
--OR
SELECT product_name, SUM(quantity) AS QUANTITY 
FROM ONLINE_Orders WHERE MONTH(order_date)=3 AND YEAR(order_date)=2024
GROUP BY product_name;

--15.	Show the number of orders per customer where the payment method is 'UPI' and group only those customers who placed more than 1 order.
SELECT customer_name, COUNT(*) AS NUMBER_OF_ORDERS FROM Online_Orders WHERE payment_method='UPI' GROUP BY customer_name HAVING COUNT(*)>1;

--16.	Calculate total revenue (quantity * unit_price) per customer_name.
SELECT customer_name, SUM(quantity*unit_price) AS TOTAL_REVENUE  FROM Online_Orders GROUP BY customer_name;

--17.	Find the average revenue per category where total quantity is more than 5.
SELECT category, AVG(quantity*unit_price) AS AVG_REVENUE FROM Online_Orders WHERE quantity>5 GROUP BY category;

--18.	Calculate 20% discount on total revenue per product_name and show discounted revenue.
SELECT product_name, SUM(quantity*unit_price*0.80) AS DISCOUNTED_REVENUE FROM Online_Orders GROUP BY product_name;

--19.	Show total tax collected per payment_method assuming 18% GST on revenue.
SELECT payment_method, SUM(quantity * unit_price * 0.18) AS tax FROM Online_Orders GROUP BY payment_method;

--20.	Find net revenue per category using formula: (quantity * unit_price) - discount (assuming discount = 10% of revenue).
SELECT category, SUM(quantity * unit_price * 0.9) AS net_revenue FROM Online_Orders GROUP BY category;

--21.	Calculate total shipping cost (assume ₹50 per order) per customer.
SELECT customer_name, COUNT(*) * 50 AS shipping_cost FROM Online_Orders GROUP BY customer_name;

--22.	Show product names where revenue after 20% discount is more than ₹10,000.
SELECT product_name, SUM(quantity * unit_price * 0.8) AS DICOUNTED_PRICE FROM Online_Orders GROUP BY product_name HAVING SUM(quantity * unit_price * 0.8)>10000;

--23.	Display category-wise average unit price and apply 5% increase (show updated price).
SELECT CATEGORY, AVG(unit_price) AS AVG_UNIT_PRICE, AVG(unit_price * 1.05) AS UPDATED_PRICE FROM Online_Orders GROUP BY category;

