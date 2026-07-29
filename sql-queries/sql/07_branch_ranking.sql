-- ==========================================
-- Task 7
-- Branch Ranking
-- ==========================================

SELECT
    BranchID,
    SUM(Amount) AS total_amount,
    RANK() OVER (
        ORDER BY SUM(Amount) DESC
    ) AS branch_rank
FROM Transactions
GROUP BY BranchID;