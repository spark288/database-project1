SELECT COUNT(*)
FROM (
    SELECT *
    FROM Item INNER JOIN AuctionUser on Item.AuctionUserID = AuctionUser.AuctionUserID
    WHERE rating > 1000
    GROUP BY Item.AuctionUserID
);