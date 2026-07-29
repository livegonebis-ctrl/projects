-- ==========================================
-- Task 10
-- Top Transactions
-- ==========================================

SELECT
    TransactionID,
    AccountOriginID,
    Amount
FROM Transactions
ORDER BY Amount DESC
LIMIT 20;