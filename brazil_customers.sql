-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT FirstName, LastName, Country, CustomerId
From Customer
WHERE Country = "Brazil";