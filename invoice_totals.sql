-- 7. invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT e.FirstName ||" "|| e.LastName AS EmployeeName, i.Total, i.BillingCountry, c.FirstName ||" "|| c.LastName AS CustomerName
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId;