-- ==========================================
-- Task 11
-- Data Quality Check
-- ==========================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(TransactionDate) AS filled_dates,
    COUNT(*) - COUNT(TransactionDate) AS missing_dates
FROM Transactions;