

-- 3. brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

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

-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.FirstName, e.LastName, i.InvoiceDate, i.Total
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId;

-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT e.FirstName ||" "|| e.LastName AS EmployeeName, i.Total, i.BillingCountry, c.FirstName ||" "|| c.LastName AS CustomerName
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId;

-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31";

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31";