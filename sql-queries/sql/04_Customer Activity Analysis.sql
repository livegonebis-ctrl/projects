-- ==========================================
-- Task 4
-- Customer Activity Analysis
-- ==========================================

SELECT
    AccountOriginID,
    COUNT(*) AS operations_count,
    SUM(Amount) AS total_amount,
    ROUND(AVG(Amount), 2) AS average_amount
FROM Transactions
GROUP BY AccountOriginID
HAVING COUNT(*) >= 20
ORDER BY total_amount DESC
LIMIT 10;