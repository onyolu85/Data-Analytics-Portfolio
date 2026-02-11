-- BUSINESS QUESTION: Who are our top 10 customers by total spend?
-- SKILLS: JOINS, Aggregations (SUM), Grouping, and Ordering.

SELECT 
    c.FirstName, 
    c.LastName, 
    c.Country, 
    SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 10;
