drop table if exists Item;
drop table if exists AuctionUser;
drop table if exists Bid;
drop table if exists Category;

create table Bid(
    ItemID int NOT NULL, 
    amount float NOT NULL,
    AuctionUserID varchar(255) NOT NULL, 
    time time NOT NULL, 
    foreign key (ItemID) references Item(ItemID),
    foreign key (AuctionUserID) references AuctionUser(AuctionUserID)
);
create table Category(
    ItemID int NOT NULL, 
    Category varchar(255) NOT NULL,
    foreign key (ItemID) references Bid(ItemID)
);
create table Item(
    ItemID int NOT NULL, 
    ends time NOT NULL, 
    first_Bid float NOT NULL, 
    name varchar(255) NOT NULL, 
    started time NOT NULL, 
    number_of_Bids int NOT NULL, 
    currently float NOT NULL, 
    AuctionUserID varchar(255) NOT NULL, 
    description varchar(255),
    primary key(ItemID),
    foreign key(AuctionUserID) references AuctionUser(AuctionUserID)
);
create table AuctionUser(
    rating int NOT NULL, 
    AuctionUserID varchar(255) NOT NULL,
    location varchar(255),
    country varchar(255),
    primary key(AuctionUserID)
);
