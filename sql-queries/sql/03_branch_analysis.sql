SELECT
    COUNT(*) AS total_transactions,
    SUM(Amount) AS total_amount
FROM Transactions;