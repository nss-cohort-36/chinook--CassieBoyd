-- 6. sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.FirstName, e.LastName, i.InvoiceDate, i.Total
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId;