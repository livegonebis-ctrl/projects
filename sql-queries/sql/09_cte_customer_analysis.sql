-- ==========================================
-- Task 9
-- Customer Analysis using CTE
-- ==========================================

WITH customer_stats AS
(
    SELECT
        AccountOriginID,
        COUNT(*) AS operations_count,
        SUM(Amount) AS total_amount
    FROM Transactions
    GROUP BY AccountOriginID
)

SELECT *
FROM customer_stats
WHERE total_amount > 50000
ORDER BY total_amount DESC;