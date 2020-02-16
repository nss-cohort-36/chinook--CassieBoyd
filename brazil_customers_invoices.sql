-- 3. brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName, c.LastName, i.BillingCountry, i.InvoiceId, i.InvoiceDate
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil";