SELECT ItemID
FROM (
        SELECT ItemID, MAX(currently)
        FROM Item
);