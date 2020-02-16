-- 8. total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31";