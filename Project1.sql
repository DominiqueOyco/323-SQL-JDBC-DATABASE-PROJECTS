/**
DDL: DROP IS FOR TESTING PURPOSES ONLY
**/
Drop Table Books; 
Drop Table Publisher;
Drop Table WritingGroups;

--DDL: CREATE THE WRITING GROUPS TABLE
CREATE TABLE WritingGroups 
(
    groupName   VARCHAR(20) NOT NULL,
    headWriter  VARCHAR(25) NOT NULL,
    yearFormed  INTEGER,
    subject     VARCHAR(20),
    CONSTRAINT pk_WritingGroups PRIMARY KEY (groupName)
);

--DDL: CREATE THE PUBLISHER TABLE
CREATE TABLE Publisher 
(
    publisherName       VARCHAR(50) NOT NULL,
    publisherAddress    VARCHAR(50) NOT NULL,
    publisherPhone      VARCHAR(20),
    publisherEmail      VARCHAR(30),
    CONSTRAINT pk_Publisher PRIMARY KEY (publisherName)
);

--DDL: CREATE THE BOOKS TABLE
CREATE TABLE Books 
(
    groupName       VARCHAR(20) NOT NULL,
    bookTitle       VARCHAR(50) NOT NULL,
    publisherName   VARCHAR(50) NOT NULL,
    yearPublished   INTEGER,
    numberPages     INTEGER,
    CONSTRAINT pk_Books PRIMARY KEY (groupName, bookTitle, publisherName)
);

--DDL: ALTER THE BOOKS TABLE TO CREATE A FOREIGN KEY CONSTRAINT FOR WRITING GROUPS
ALTER TABLE Books
        ADD CONSTRAINT Books_WritingGroups_fk 
        FOREIGN KEY (groupName)
        REFERENCES WritingGroups(groupName);

--DDL: ALTER THE BOOKS TABLE TO CREATE A FOREIGN KEY CONSTRAINT FOR PUBLISHERS
ALTER TABLE Books
        ADD CONSTRAINT Books_Publishers_fk 
        FOREIGN KEY (publisherName)
        REFERENCES Publisher(publisherName);

--DML: INSERTING VALUES INTO THE WRITING GROUPS TABLE
INSERT INTO WritingGroups (groupName, headWriter, yearFormed, subject) VALUES
            ('Holy Love', 'Charles Preston', 2000, 'Rock and Roll'),
            ('Love Birds', 'Katie Holmes', 2000, 'Romance'),
            ('Not Happening', 'Mr.Krabs', 1997, 'Money'),
            ('Rap God', 'Eminem', 2010, 'Rapping'), 
            ('World At War', 'Nash Villa', 2007, 'History'),
            ('Fiction Lords', 'William Maellard', 2011 , 'Fiction'),
            ('Quadrax', 'Anna Chroma', 2004, 'Mathematics'),
            ('Neutron', 'Ryan Choi', 2012, 'Science'),
            ('Clarinet God', 'Squidward Tentacles', 1997 , 'Music'),
            ('ITS RAW!', 'Gordon Ramsay', 2015, 'Culinary Arts');

--DML: INSERTING VALUES INTO THE PUBLISHER TABLE
INSERT INTO Publisher(publisherName, publisherAddress, publisherPhone, publisherEmail) VALUES
            ('Jupiter Publishing', '1356 Maple Drive, Irvine - California', '808-950-1945', 'Jupiter@gmail.com'),
            ('McDonald & Freeney', '7659 Aloha Ave, Diamond Head - Hawaii', '756-987-9541', 'MC&F@yahoo.com'),
            ('Cherry Blossom', '8134 Yokohama St, Yokota - Japan', '143-987-3431', 'CBS@fuji.com' ),
            ('Freezone', '1439 IceBerg Way, Anchorage - Alaska', '519-076-1414', 'SnowMenInc@gmail.com'),
            ('Tiger Fighters', '5431 Mandine Road, Yoto - Indonesia', '134-5313-9847', 'TigersPub@hotmail.com'),
            ('RibEye Estates', '19484 Main St, Manhatten - NewYork', '764-9873-3145', 'SteakEye@yahoo.com'),
            ('Apple FrameWorks', '99999 Mountain View, SanFransico', '733-1435-4184', 'ApplePub@ApplePub.com'),
            ('Phoniex Rises', '33634, Sherman Road, Phoenix Arizona', '471-9814-1844', 'PhoniexRises@gmail.com'),
            ('Magnesium Publishers', '65431 Giovanni Way, Alanta Georgia', '984-000-4314', 'MagsGA@yahoo.com'),
            ('Fleeting Foxes', '47474 Eagle St, Seattle WA', '143-8134-9134', 'Foxes@gmail.com');

--DML: INSERTING VALUES INTO THE BOOKS TABLE
INSERT INTO Books (groupName, bookTitle, publisherName, yearPublished, numberPages) VALUES
            ('Holy Love', 'The Heavy Rock', 'Tiger Fighters', 1994, 392),
            ('Holy Love', 'Electric Soul', 'Jupiter Publishing', 1989, 418),
            ('World At War', 'WWII: Stories From Survivors', 'Magnesium Publishers', 1979, 800),
            ('Quadrax', 'Quantitative Reasoning', 'Freezone', 2001, 392),
            ('Not Happening', 'Growing A Money Tree', 'Fleeting Foxes', 1986, 452),
            ('ITS RAW!', 'FAST FOOD OR DEATH FOOD', 'McDonald & Freeney', 2008, 315),
            ('ITS RAW!', 'The Best Restaurants In The World', 'Jupiter Publishing', 2014, 502),
            ('Fiction Lords', '1970', 'Magnesium Publishers', 1970, 701),
            ('Neutron', 'A Tale of the Universe', 'Jupiter Publishing', 2003, 457),
            ('Love Birds', 'Geisha and Retainer', 'Cherry Blossom', 1993, 605);

/**
DML: DISPLAYING THE VALUES OF THE TABLES FOR TESTING PURPOSES
**/
Select * FROM WritingGroups;
Select * FROM Publisher;
Select * FROM Books;