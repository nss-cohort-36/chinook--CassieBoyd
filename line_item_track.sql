-- 12. line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT t.name, i.InvoiceLineId
FROM Track t, InvoiceLine i
WHERE t.TrackId = i.TrackId
ORDER BY i.InvoiceLineId ASC;