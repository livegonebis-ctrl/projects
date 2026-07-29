-- ==========================================
-- Task 5
-- Monthly Transaction Analysis
-- ==========================================

SELECT
    DATE_TRUNC('month', TransactionDate) AS month,
    COUNT(*) AS transactions_count,
    SUM(Amount) AS total_amount,
    ROUND(AVG(Amount), 2) AS average_amount
FROM Transactions
WHERE TransactionDate IS NOT NULL
GROUP BY month
ORDER BY month;