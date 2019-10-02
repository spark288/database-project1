SELECT COUNT(*)
FROM (
    SELECT *
    FROM Item INNER JOIN Bid ON Item.AuctionUserID = Bid.AuctionUserID
    GROUP BY Item.AuctionUserID
);