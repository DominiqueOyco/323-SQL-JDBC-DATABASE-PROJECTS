DROP TABLE Authors;
DROP TABLE Title_Authors;
DROP TABLE Publishers;
DROP TABLE Titles;
DROP TABLE Royalties;

CREATE TABLE Authors(
    au_id           VARCHAR(4) NOT NULL,
    au_fname        VARCHAR(20) NOT NULL,
    au_lname        VARCHAR(20) NOT NULL,
    phone           VARCHAR(20) NOT NULL,
    address         VARCHAR(50),
    city            VARCHAR(20),
    states          VARCHAR(2),
    zip             VARCHAR(5));

ALTER TABLE Authors
          ADD CONSTRAINT Authors_pk
          PRIMARY KEY (au_id);

INSERT INTO Authors (au_id, au_fname, au_lname, phone, address, city, states, zip) VALUES 
        ('5011', 'Tom', 'Jewett', '714-555-1212', '10200 Slater', 'Fountain Valley', 'CA', '92708'),
        ('5012', 'Dick', 'Biscuit', '714-556-1616', '10201 Slater', 'Fountain Valley', 'CA', '92708'),
        ('5013', 'Mike', 'Hawk', '714-444-0117', '909 Brookhurst', 'Anaheim', 'CA', '92804');

--SELECT * FROM Authors;

CREATE TABLE Publishers(
    pub_id          VARCHAR(4) NOT NULL,
    pub_name        VARCHAR(50) NOT NULL,
    city            VARCHAR(20),
    states          VARCHAR(2),
    country         VARCHAR(20));

ALTER TABLE Publishers
          ADD CONSTRAINT Publishers_pk
          PRIMARY KEY (pub_id);

INSERT INTO Publishers (pub_id, pub_name, city, states, country)
          VALUES ('2911', 'Hen House Corp', 'Birmingham', 'AL', 'USA');
INSERT INTO Publishers (pub_id, pub_name, city, states, country)
          VALUES ('2912', 'Pornhub Inc', 'New York', 'NY', 'USA');
INSERT INTO Publishers (pub_id, pub_name, city, states, country)
          VALUES ('2913', 'Tony Hawk LLC', 'Los Angeles', 'CA', 'USA');

--SELECT * FROM Publishers;

CREATE TABLE Titles(
    title_id        VARCHAR(4) NOT NULL,
    title_name      VARCHAR(50) NOT NULL,
    tType           VARCHAR(20) NOT NULL,
    pub_id          VARCHAR(4) NOT NULL,
    pages           int,
    price           double,
    sales           VARCHAR(20),
    pub_date        VARCHAR(11),
    contract        VARCHAR(11));

ALTER TABLE Titles
          ADD CONSTRAINT Titles_pk
          PRIMARY KEY (title_id);

ALTER TABLE Titles
          ADD CONSTRAINT Titles_Publishers_fk
          FOREIGN KEY (pub_id)
          REFERENCES Publishers (pub_id);

INSERT INTO Titles (title_id, title_name, tType, pub_id, pages, price, sales, pub_date, contract)
          VALUES ('6011', 'The Book', 'Hardcover', '2911', 269, 14.99, '75%', '11/11/2011', '08/11/2041');
INSERT INTO Titles (title_id, title_name, tType, pub_id, pages, price, sales, pub_date, contract)
          VALUES ('6012', 'My Dick!', 'Paperback', '2912', 69, 11.99, '85%', '01/11/2013', '05/21/2021');
INSERT INTO Titles (title_id, title_name, tType, pub_id, pages, price, sales, pub_date, contract)
          VALUES ('6013', 'Mike Hawk: Tony Hawk & Mike Hawk', 'Paperback', '2913', 309, 11.99, '35%', '01/11/2013', '06/26/2077');
INSERT INTO Titles (title_id, title_name, tType, pub_id, pages, price, sales, pub_date, contract)
          VALUES ('6014', 'Titty Meat', 'Paperback', '2912', 69, 11.99, '35%', '02/13/2013', '07/26/2077');

--SELECT * FROM Titles;

CREATE TABLE Title_Authors(
    title_id        VARCHAR(4) NOT NULL,
    au_id           VARCHAR(4) NOT NULL,
    au_order        VARCHAR(50) NOT NULL,
    royalty_share   VARCHAR(4));

ALTER TABLE Title_Authors
          ADD CONSTRAINT Title_Authors_Authors_fk
          FOREIGN KEY (au_id)
          REFERENCES Authors (au_id);

ALTER TABLE Title_Authors
          ADD CONSTRAINT Title_Authors_Titles_fk
          FOREIGN KEY (title_id)
          REFERENCES Titles (title_id);

INSERT INTO Title_Authors (title_id, au_id, au_order, royalty_share)
          VALUES ('6011', '5011', 'Tom Jewett', '50%');
INSERT INTO Title_Authors (title_id, au_id, au_order, royalty_share)
          VALUES ('6012', '5012', 'Dick Biscuit', '100%');
INSERT INTO Title_Authors (title_id, au_id, au_order, royalty_share)
          VALUES ('6013', '5013', 'M.Hawk, T.Hawk', '37%');
INSERT INTO Title_Authors (title_id, au_id, au_order, royalty_share)
          VALUES ('6014', '5012', 'Dick Biscuit', '100%');

--SELECT * FROM Title_Authors;


CREATE TABLE Royalties(
    title_id        VARCHAR(4) NOT NULL,
    advance         VARCHAR(20),
    royalty_rate    VARCHAR(3));

ALTER TABLE Royalties
          ADD CONSTRAINT Royalties_Titles_fk
          FOREIGN KEY (title_id)
          REFERENCES Titles (title_id);

INSERT INTO Royalties (title_id, advance, royalty_rate)
          VALUES ('6011', 'Check', '10%');
INSERT INTO Royalties (title_id, advance, royalty_rate)
          VALUES ('6012', 'Direct Deposit', '10%');
INSERT INTO Royalties (title_id, advance, royalty_rate)
          VALUES ('6013', 'Paypal', '10%');
INSERT INTO Royalties (title_id, advance, royalty_rate)
          VALUES ('6014', 'Direct Deposit', '10%');

--SELECT * FROM Royalties;

--SELECT title_name, pages FROM Titles;
SELECT title_name FROM Titles WHERE title_name = pages <= 300;
--SELECT pub_name FROM Titles NATURAL JOIN Publishers WHERE title_name = 'The Book';
--SELECT au_fname, au_lname, title_name FROM Authors NATURAL JOIN Titles NATURAL JOIN Title_Authors;