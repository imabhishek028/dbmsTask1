-- creating database inventoryDB
CREATE DATABASE inventoryDB;

-- now using that database
USE inventoryDB;

-- creating table and adding specified columns
CREATE table products(
  name varchar(50),
  description varchar(250),
  price numeric,
  quantity int,
  category varchar(50)
);

-- inserting data into table
INSERT INTO products VALUES ("Bat", "A Cricket Bat", 460, 2, "Sports");
INSERT INTO products VALUES ("Motorola Phone","Motorola G54 2024 Release", 14999,5, "Electronics");
INSERT INTO products VALUES ("Asus Laptop","Asus i5 12th gen 180 Laptop", 65000, 2, "Electronics");
INSERT INTO products VALUES("Facewash", "Himalaya Pimple Clear Facewash", 230, 12, "Cosmetics");

-- query to retrieve all the products.
SELECT * FROM products; 

--  using where clause to get a product with a price less that specified
SELECT * FROM products WHERE price<500;

-- using where clause to get a product with quantity more than a specified number
SELECT * FROM products WHERE quantity>=5; 

-- filtering them together using and 
SELECT * FROM products WHERE price<500 AND quantity>=5;

-- using update to update price of facewash 
-- removing safe mode to make the updates
SET SQL_SAFE_UPDATES=0;
UPDATE products
SET price=400
WHERE name="Facewash";

-- deleting a product from Products table.
DELETE FROM products
WHERE name="Bat";

-- finally viewinng the changes
SELECT * FROM products;

