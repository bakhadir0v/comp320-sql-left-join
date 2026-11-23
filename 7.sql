SELECT
    FirstName, LastName, Name AS Genre
FROM (
    SELECT
        c.CustomerId, c.FirstName, c.LastName, g.Name,
        COUNT(il.TrackId) AS TracksPurchased
    FROM Customer c
    JOIN Invoice i ON c.CustomerId = i.CustomerId
    JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON il.TrackId = t.TrackId
    JOIN Genre g ON t.GenreId = g.GenreId
    GROUP BY c.CustomerId, g.Name
)
GROUP BY CustomerId
HAVING TracksPurchased = MAX(TracksPurchased)
ORDER BY FirstName, LastName;