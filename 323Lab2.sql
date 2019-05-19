CREATE TABLE customers (
          cfirstname    VARCHAR(20) NOT NULL,
          clastname     VARCHAR(20) NOT NULL,
          cphone        VARCHAR(20) NOT NULL,
          cstreet       VARCHAR(50),
          czipcode      VARCHAR(5));

ALTER TABLE customers
          ADD CONSTRAINT customers_pk
          PRIMARY KEY (cfirstname, clastname, cphone);

INSERT INTO customers (cfirstname,clastname,cphone,cstreet,czipcode)
          VALUES ('Tom', 'Jewett', '714-555-1212', '10200 Slater', '92708'),
                 ('Jerry', 'Jericho', '714-543-5454', '7000 Euclid', '92708'),
                 ('King', 'Kong', '714-211-0121', '5014 Lincoln', '92804'),
                 ('Maria', 'Ross', '714-213-2912', '5011 Katella', '90720'),
                 ('Lily', 'Lilac', '714-560-5012', '2912 Beach', '92844');

CREATE TABLE orders (
          cfirstname    VARCHAR(20) NOT NULL,
          clastname     VARCHAR(20) NOT NULL,
          cphone        VARCHAR(20) NOT NULL,
          orderdate     DATE NOT NULL,
          soldby        VARCHAR(20));

ALTER TABLE orders
          ADD CONSTRAINT orders_pk
          PRIMARY KEY (cfirstname, clastname, cphone, orderdate);

ALTER TABLE orders
          ADD CONSTRAINT orders_customers_fk
          FOREIGN KEY (cfirstname, clastname, cphone)
          REFERENCES customers (cfirstname, clastname, cphone);

INSERT INTO orders (cfirstname,clastname,cphone,orderdate,soldby)
          VALUES ('Tom', 'Jewett', '714-555-1212', '2005-09-11', 'Patrick'),
                 ('Jerry', 'Jericho', '714-543-5454', '2005-08-13', 'Ana'),
 	      ('Jerry', 'Jericho', '714-543-5454', '2005-08-13', 'Patrick'),
                 ('Maria', 'Ross', '714-213-2912', '2005-07-21', 'Ana'),
                 ('Maria', 'Ross', '714-213-2912', '2005-07-21', 'Patrick');	      

SELECT * FROM customers NATURAL JOIN orders;

