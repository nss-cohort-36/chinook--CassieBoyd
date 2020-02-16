-- 9. total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT SUM(Total) AS "2011"
FROM Invoice
WHERE InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31";