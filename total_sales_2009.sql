-- 9. total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT SUM(Total) AS "2009"
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31";