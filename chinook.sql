-- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT FirstName, LastName, Country, CustomerId
FROM Customer
WHERE Country != "USA";


-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT FirstName, LastName, Country, CustomerId
From Customer
WHERE Country = "Brazil";

-- brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName, c.LastName, i.BillingCountry, i.InvoiceId, i.InvoiceDate
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil";

--sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT FirstName, LastName, Title
FROM Employee
WHERE Title = "Sales Support Agent";

-- unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT BillingCountry
FROM Invoice;
