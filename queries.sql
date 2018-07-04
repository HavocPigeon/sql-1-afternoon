DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS orders;

CREATE TABLE person (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Age INTEGER,
  Height TEXT,
  City TEXT,
  FavoriteColor TEXT
);

INSERT INTO person 
(Name, Age, Height, City, FavoriteColor)
VALUES
  ('Bob', '15', '150', 'Mesa', 'Red'),
  ('Henry', '20', '163', 'Tempe', 'Blue'),
  ('Joe', '24', '154', 'Mesa', 'Green'),
  ('Billy', '26', '161', 'Phoenix', 'Green'),
  ('Sarah', '25', '150', 'Tempe', 'Orange');

SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 OR age < 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favoritecolor != 'Red';
SELECT * FROM person WHERE favoritecolor != 'Red' AND favoritecolor != 'Blue';
SELECT * FROM person WHERE favoritecolor = 'Orange' OR 'Green';
SELECT * FROM person WHERE favoritecolor IN ('Orange', 'Green', 'Blue');
SELECT * FROM person WHERE favoritecolor IN ('Yellow', 'Purple');

CREATE TABLE orders (
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice DECIMAL,
  Quantity INTEGER
);

INSERT INTO orders
(PersonID, ProductName, ProductPrice, Quantity)
VALUES
(0, 'Banana', 2.5, 1),
(1, 'Apple', 1.5, 2),
(2, 'Orange', 1.0, 4),
(3, 'Strawberry', 1.7, 3),
(4, 'Grape', 1.3, 2);

SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(productprice) FROM orders;
SELECT SUM(productprice * quantity) FROM orders WHERE personid = 0;

INSERT INTO Artist
(Name)
VALUES
('Foster The People'),
('Bad Suns'),
('The Neighbourhood');

SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;
SELECT * FROM Artist WHERE Name = 'Black%';
SELECT * FROM Artist WHERE Name = '%Black%';

SELECT firstname, lastname FROM Employee WHERE city = 'Calgary';
SELECT firstname, lastname, Max(birthdate) FROM Employee;
SELECT firstname, lastname, Min(birthdate) FROM Employee;
SELECT * FROM Employee WHERE firstname = 'Nancy' AND lastname = 'Edwards';
SELECT * FROM Employee WHERE reportsto = 2;
SELECT COUNT(*) FROM Employee WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM orders;
SELECT MAX(productprice) FROM orders;
SELECT MIN(productprice) FROM orders;
SELECT * FROM orders WHERE productprice > 5;
SELECT COUNT(*) FROM orders WHERE productprice < 5;
SELECT COUNT(*) FROM invoice WHERE billingstate IN ('CA', 'TX', 'AZ');
SELECT AVG(quantity) FROM orders;
SELECT SUM(productprice) FROM orders;