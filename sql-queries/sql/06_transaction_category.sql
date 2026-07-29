-- ==========================================
-- Task 6
-- Transaction Category
-- ==========================================

SELECT
    TransactionID,
    Amount,
    CASE
        WHEN Amount < 1000 THEN 'Small'
        WHEN Amount BETWEEN 1000 AND 3000 THEN 'Medium'
        ELSE 'Large'
    END AS transaction_category
FROM Transactions
ORDER BY Amount DESC
LIMIT 20;