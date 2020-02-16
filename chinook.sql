

-- 7. invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

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