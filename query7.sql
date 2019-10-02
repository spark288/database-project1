SELECT COUNT(*)
FROM (
    SELECT *
    FROM Category AS "c", Bid AS "b"
    WHERE c.ItemID = b.ItemID AND b.amount > 100.0
    GROUP BY c.Category
    HAVING COUNT(*) >= 1
);