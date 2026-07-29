-- ==========================================
-- Task 8
-- Branch Share
-- ==========================================

SELECT
    BranchID,
    SUM(Amount) AS total_amount,
    ROUND(
        SUM(Amount) * 100.0 /
        SUM(SUM(Amount)) OVER (),
        2
    ) AS percentage
FROM Transactions
GROUP BY BranchID
ORDER BY percentage DESC;