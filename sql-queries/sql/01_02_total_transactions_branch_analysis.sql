-- 1. Общая статистика транзакций

SELECT
    COUNT(*) AS total_transactions,
    SUM(Amount) AS total_amount
FROM Transactions;


-- 2. Анализ отделений

SELECT
    BranchID,
    SUM(Amount) AS total_amount
FROM Transactions
GROUP BY BranchID;