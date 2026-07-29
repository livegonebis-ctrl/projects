-- ==========================================
-- Task 12
-- Compare Branch Average
-- ==========================================

SELECT
    BranchID,
    ROUND(AVG(Amount),2) AS average_amount
FROM Transactions
GROUP BY BranchID
HAVING AVG(Amount) >
(
    SELECT AVG(Amount)
    FROM Transactions
)
ORDER BY average_amount DESC;