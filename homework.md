# Lesson 7 Homework Tasks

These homework tasks cover the following topics:
- **Aggregate Functions** (MIN, MAX, COUNT, AVG, SUM)
- **Filtering Aggregated Data with HAVING**
- **Pivoting and Unpivoting**

---

## 🟢 Easy-Level Tasks (10)

1. Write a query to find the minimum (MIN) price of a product in the Products table.
2. Write a query to find the maximum (MAX) Salary from the Employees table.
3. Write a query to count the number of rows in the Customers table using COUNT(*).
4. Write a query to count the number of unique product categories (COUNT(DISTINCT Category)) from the Products table.
5. Write a query to find the total (SUM) sales for a particular product in the Sales table.
6. Write a query to calculate the average (AVG) age of employees in the Employees table.
7. Write a query that uses GROUP BY to count the number of employees in each department.
8. Write a query to show the minimum and maximum Price of products grouped by Category.
9. Write a query to calculate the total (SUM) sales per Region in the Sales table.
10. Write a query to use HAVING to filter departments having more than 5 employees from the Employees table.

---

## 🟠 Medium-Level Tasks (10)

11. Write a query to calculate the total sales and average sales for each product category from the Sales table.
12. Write a query that uses COUNT(columnname) to count the number of employees with a specific JobTitle.
13. Write a query that finds the highest (MAX) and lowest (MIN) Salary by department in the Employees table.
14. Write a query that uses GROUP BY to calculate the average salary per Department.
15. Write a query to show the AVG salary and COUNT(*) of employees working in each department.
16. Write a query that uses HAVING to filter products with an average price greater than 100.
17. Write a query to count how many products have sales above 100 units using COUNT(DISTINCT ProductID).
18. Write a query that calculates the total sales for each year in the Sales table, and use GROUP BY to group them.
19. Write a query that uses COUNT to show the number of customers who placed orders in each region.
20. Write a query that applies the HAVING clause to filter out Departments with total salary expenses greater than 100,000.

---

## 🔴 Hard-Level Tasks (10)

21. Write a query that shows the average (AVG) sales for each product category, and then uses HAVING to filter categories with an average sales amount greater than 200.
22. Write a query to calculate the total (SUM) sales for each employee, then filter the results using HAVING to include only employees with total sales over 5000.
23. Write a query to find the total (SUM) and average (AVG) salary of employees grouped by department, and use HAVING to include only departments with an average salary greater than 6000.
24. Write a query that finds the maximum (MAX) and minimum (MIN) order value for each customer, and then applies HAVING to exclude customers with an order value less than 50.
25. Write a query that calculates the total sales (SUM) and counts distinct products sold in each Region, and then applies HAVING to filter regions with more than 10 products sold.
26. Write a query to find the MIN and MAX order quantity per product, and then use GROUP BY to group the results by ProductCategory.
27. Write a query to pivot the Sales table by Year and show the sum of SalesAmount for each Region.
28. Write a query to unpivot the Sales table, converting Q1, Q2, Q3, and Q4 columns into rows showing total sales per quarter.
29. Write a query to count the number of orders per product, filter those with more than 50 orders using HAVING, and group them by ProductCategory.
30. Write a query to pivot the EmployeeSales table, displaying the total sales per employee for each quarter (Q1, Q2, Q3, Q4).
