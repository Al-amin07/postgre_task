-- Create Books Table
CREATE TABLE books(
id SERIAL PRIMARY KEY,
title varchar(100) NOT NULL,
author varchar(100) NOT NULL,
price numeric(10,2) NOT NULL CHECK(price > 0),
stock int NOT NULL CHECK(stock >= 0),
published_year int NOT NULL CHECK (published_year > 1000)
);

-- Create Customers Table
CREATE TABLE customers(
id SERIAL PRIMARY KEY,
name varchar(100) NOT NULL,
email varchar(100) UNIQUE NOT NULL,
joined_date date DEFAULT CURRENT_DATE
);

-- Create Orders Table
CREATE TABLE orders(
id SERIAL PRIMARY KEY,
customer_id int REFERENCES customers(id) on DELETE CASCADE,
book_id int REFERENCES books(id) on DELETE CASCADE,
quantity int NOT NULL CHECK(quantity > 0),
order_date date DEFAULT CURRENT_DATE
);
INSERT INTO orders (customer_id, book_id, quantity) VALUES(1, 2, 1);


-- Insert Data into Books Table
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 12.99, 50, 1925),
('To Kill a Mockingbird', 'Harper Lee', 15.49, 40, 1960),
('1984', 'George Orwell', 14.99, 35, 1949),
('Pride and Prejudice', 'Jane Austen', 10.99, 60, 1813),
('Moby-Dick', 'Herman Melville', 17.99, 20, 1851),
('War and Peace', 'Leo Tolstoy', 19.99, 15, 1869),
('The Catcher in the Rye', 'J.D. Salinger', 13.99, 45, 1951),
('Crime and Punishment', 'Fyodor Dostoevsky', 16.99, 30, 1866),
('The Hobbit', 'J.R.R. Tolkien', 14.49, 55, 1937),
('Brave New World', 'Aldous Huxley', 13.49, 25, 1932),
('The Lord of the Rings', 'J.R.R. Tolkien', 29.99, 18, 1954),
('Jane Eyre', 'Charlotte Bronte', 11.99, 40, 1847),
('Wuthering Heights', 'Emily Bronte', 12.99, 33, 1847),
('Fahrenheit 451', 'Ray Bradbury', 15.99, 22, 1953),
('The Odyssey', 'Homer', 18.49, 20, 1800),
('The Iliad', 'Homer', 18.49, 22, 1750),
('Don Quixote', 'Miguel de Cervantes', 21.99, 10, 1605),
('Ulysses', 'James Joyce', 23.99, 8, 1922),
('The Divine Comedy', 'Dante Alighieri', 24.99, 14, 1320),
('Les Misérables', 'Victor Hugo', 22.99, 12, 1862),
('Frankenstein', 'Mary Shelley', 13.99, 38, 1818),
('Dracula', 'Bram Stoker', 14.99, 32, 1897),
('The Picture of Dorian Gray', 'Oscar Wilde', 12.49, 28, 1890),
('Anna Karenina', 'Leo Tolstoy', 19.49, 15, 1877),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 20.49, 10, 1880),
('Great Expectations', 'Charles Dickens', 14.99, 25, 1861),
('A Tale of Two Cities', 'Charles Dickens', 14.99, 27, 1859),
('The Count of Monte Cristo', 'Alexandre Dumas', 18.99, 18, 1844),
('Madame Bovary', 'Gustave Flaubert', 16.99, 20, 1856),
('The Grapes of Wrath', 'John Steinbeck', 15.99, 22, 1939),
('Of Mice and Men', 'John Steinbeck', 10.99, 40, 1937),
('Catch-22', 'Joseph Heller', 14.99, 18, 1961),
('Slaughterhouse-Five', 'Kurt Vonnegut', 13.99, 22, 1969),
('One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 18.49, 16, 1967),
('Love in the Time of Cholera', 'Gabriel Garcia Marquez', 17.49, 14, 1985),
('Beloved', 'Toni Morrison', 16.99, 20, 1987),
('Invisible Man', 'Ralph Ellison', 14.99, 18, 1952),
('The Sun Also Rises', 'Ernest Hemingway', 13.49, 25, 1926),
('A Farewell to Arms', 'Ernest Hemingway', 15.49, 22, 1929),
('The Old Man and the Sea', 'Ernest Hemingway', 12.99, 30, 1952),
('Dune', 'Frank Herbert', 19.99, 28, 1965),
('The Shining', 'Stephen King', 17.99, 22, 1977),
('It', 'Stephen King', 18.99, 20, 1986),
('The Stand', 'Stephen King', 21.99, 15, 1978),
('The Road', 'Cormac McCarthy', 16.99, 18, 2006),
('Blood Meridian', 'Cormac McCarthy', 17.99, 15, 1985),
('The Book Thief', 'Markus Zusak', 14.99, 20, 2005),
('The Night Circus', 'Erin Morgenstern', 15.99, 22, 2011),
('The Alchemist', 'Paulo Coelho', 14.99, 35, 1988),
('Norwegian Wood', 'Haruki Murakami', 13.99, 25, 1987);

-- Insert Data into Customers Table
INSERT INTO customers (name, email) VALUES
('Hello Johnson', 'hello.johnson@example.com'),
('Bob Smith', 'bob.smith@example.com'),
('Charlie Brown', 'charlie.brown@example.com'),
('David Williams', 'david.williams@example.com'),
('Emily Davis', 'emily.davis@example.com'),
('Franklin Harris', 'franklin.harris@example.com'),
('Grace Miller', 'grace.miller@example.com'),
('Henry Wilson', 'henry.wilson@example.com'),
('Isabella Clark', 'isabella.clark@example.com'),
('Jack Anderson', 'jack.anderson@example.com'),
('Karen Lewis', 'karen.lewis@example.com'),
('Liam Walker', 'liam.walker@example.com'),
('Mia Hall', 'mia.hall@example.com'),
('Noah Young', 'noah.young@example.com'),
('Olivia King', 'olivia.king@example.com'),
('Paul Wright', 'paul.wright@example.com'),
('Quinn Baker', 'quinn.baker@example.com'),
('Rachel Green', 'rachel.green@example.com'),
('Samuel Nelson', 'samuel.nelson@example.com'),
('Taylor Scott', 'taylor.scott@example.com');

-- Insert Data into Orders Table
INSERT INTO orders (customer_id, book_id, quantity) VALUES
(1, 5, 2),
(2, 10, 1),
(3, 15, 3),
(4, 20, 1),
(5, 25, 2),
(6, 30, 4),
(7, 35, 1),
(8, 40, 2),
(9, 45, 3),
(10, 50, 1),
(11, 2, 2),
(12, 8, 1),
(13, 14, 3),
(14, 22, 2),
(15, 28, 1),
(16, 32, 4),
(17, 38, 2),
(18, 42, 1),
(19, 48, 3),
(20, 12, 2);

-- Retrive Data from Tables
SELECT * FROM customers;
SELECT * FROM books;
SELECT * FROM orders;

-- 1. Find books that are out of stock
SELECT title FROM books
WHERE stock = 0;

-- 2. Retrieve the most expensive book in the store.
SELECT * FROM books
ORDER BY price DESC
LIMIT 1;

-- 3. Find the total number of orders placed by each customer
SELECT c.name, count(*) as total_orders  FROM orders as o
JOIN customers as c
ON o.customer_id = c.id
GROUP BY c.name;

-- 4. Calculate the total revenue generated from book sales
SELECT sum(price * quantity) as total_revenue FROM orders as o
JOIN books as b
ON o.book_id = b.id;

-- 5. List all customers who have placed more than one order
SELECT name, count(*) as orders_count FROM orders as o
JOIN customers as c
ON o.customer_id = c.id
GROUP BY c.name
HAVING count(*) > 1;

-- 6. Find the average price of books in the store
SELECT avg(price) as avg_book_price FROM books;

-- 7. Increase the price of all books published before 2000 by 10%
UPDATE  books
SET price = price * 1.1
WHERE published_year < 2000;

SELECT * FROM books;

-- 8. Delete customers who haven't placed any orders
DELETE FROM customers 
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);

SELECT * FROM customers;


