-- -- Add 20 rows of dummy data to the Users table
-- INSERT INTO Users (id, email, password, first_name, last_name, balance)
-- VALUES
--     (1, 'user1@example.com', 'password1', 'John', 'Doe', 1000.00),
--     (2, 'user2@example.com', 'password2', 'Alice', 'Smith', 750.50),
--     (3, 'user3@example.com', 'password3', 'Sarah', 'Wilson', 1200.00),
--     (4, 'user4@example.com', 'password4', 'Michael', 'Brown', 850.25),
--     (5, 'user5@example.com', 'password5', 'Emily', 'Johnson', 950.75),
--     (6, 'user6@example.com', 'password6', 'David', 'Lee', 1250.00),
--     (7, 'user7@example.com', 'password7', 'Jessica', 'Clark', 670.50),
--     (8, 'user8@example.com', 'password8', 'Matthew', 'Anderson', 780.00),
--     (9, 'user9@example.com', 'password9', 'Olivia', 'Martinez', 1100.25),
--     (10, 'user10@example.com', 'password10', 'William', 'White', 920.75),
--     (11, 'user11@example.com', 'password11', 'Ava', 'Harris', 850.50),
--     (12, 'user12@example.com', 'password12', 'James', 'Turner', 960.25),
--     (13, 'user13@example.com', 'password13', 'Sophia', 'Moore', 800.00),
--     (14, 'user14@example.com', 'password14', 'Daniel', 'Taylor', 1125.00),
--     (15, 'user15@example.com', 'password15', 'Mia', 'Hall', 675.50),
--     (16, 'user16@example.com', 'password16', 'Jackson', 'King', 765.00),
--     (17, 'user17@example.com', 'password17', 'Isabella', 'Wright', 975.25),
--     (18, 'user18@example.com', 'password18', 'Ethan', 'Adams', 840.75),
--     (19, 'user19@example.com', 'password19', 'Grace', 'Collins', 1200.00),
--     (20, 'user20@example.com', 'password20', 'Nathan', 'Bennett', 725.50);

-- Add 10 rows of dummy data to the Seller table
-- INSERT INTO Seller (seller_id)
-- VALUES
--     (1),
--     (2),
--     (5),
--     (7),
--     (8),
--     (10),
--     (11),
--     (13),
-- 	(19),
--     (20);

-- -- Add 5 rows of dummy data to the Category table (you can define category names as needed)
-- INSERT INTO Category (category_name)
-- VALUES
--     ('Electronics'),
--     ('Clothing'),
--     ('Furniture'),
--     ('Books'),
--     ('Sports Equipment');

-- -- Add 20 rows of dummy data to the Product table
-- INSERT INTO Product (cid, name, description, image, price, available)
-- VALUES
--     (1, 'High-end Smartphone', 'A feature-rich smartphone', 'phone1.jpg', 699.99, true),
--     (1, 'Budget Smartphone', 'An affordable smartphone', 'phone2.jpg', 199.99, true),
--     (1, 'Tablet', 'A versatile tablet device', 'tablet1.jpg', 299.99, true),
--     (1, 'Wireless Headphones', 'High-quality wireless headphones', 'headphones1.jpg', 99.99, true),
--     (1, 'Laptop', 'A powerful laptop computer', 'laptop1.jpg', 899.99, true),
--     (2, 'T-shirt', 'Cotton T-shirt in various colors', 'tshirt1.jpg', 19.99, true),
--     (2, 'Jeans', 'Classic denim jeans', 'jeans1.jpg', 39.99, true),
--     (2, 'Sneakers', 'Stylish sneakers for everyday wear', 'sneakers1.jpg', 49.99, true),
--     (2, 'Dress', 'Elegant evening dress', 'dress1.jpg', 79.99, true),
--     (2, 'Shorts', 'Comfortable summer shorts', 'shorts1.jpg', 29.99, true),
--     (3, 'Sofa', 'Comfortable three-seater sofa', 'sofa1.jpg', 499.99, true),
--     (3, 'Coffee Table', 'Wooden coffee table', 'table1.jpg', 89.99, true),
--     (3, 'Dining Set', '5-piece dining set', 'dining1.jpg', 299.99, true),
--     (3, 'Wardrobe', 'Spacious wardrobe for storage', 'wardrobe1.jpg', 199.99, true),
--     (3, 'Bed', 'Queen-size bed with a headboard', 'bed1.jpg', 399.99, true),
--     (4, 'Novel', 'Bestselling novel', 'novel1.jpg', 14.99, true),
--     (4, 'Textbook', 'Educational textbook', 'textbook1.jpg', 59.99, true),
--     (5, 'Tennis Racket', 'High-performance tennis racket', 'tennis1.jpg', 79.99, true),
--     (5, 'Basketball', 'Official-size basketball', 'basketball1.jpg', 19.99, true),
--     (5, 'Yoga Mat', 'Non-slip yoga mat', 'yogamat1.jpg', 29.99, true);


-- -- Add 20 rows of dummy data to the Inventory table
-- INSERT INTO Inventory (pid, sid, quantity_in_stock)
-- VALUES
--     (1, 1, 50),
--     (1, 2, 30),
--     (2, 5, 40),
--     (3, 7, 25),
--     (4, 8, 10),
--     (5, 10, 15),
--     (6, 1, 20),
--     (7, 2, 35),
--     (8, 5, 60),
--     (9, 7, 45),
--     (10, 8, 20),
--     (11, 10, 30),
--     (12, 1, 10),
--     (13, 2, 20),
--     (14, 5, 40),
--     (15, 7, 15),
--     (16, 8, 50),
--     (17, 10, 25),
--     (18, 1, 10),
--     (19, 2, 20),
--     (20, 5, 30);

-- -- Add 10 rows of dummy data to the ProductReview table
-- INSERT INTO ProductReview (pid, sid, aid, stars, review, review_date)
-- VALUES
--     (1, 1, 3, 4, 'Great product!', '2023-01-16'),
--     (1, 2, 4, 5, 'Awesome smartphone.', '2023-01-21'),
--     (2, 5, 3, 4, 'Impressive features.', '2023-01-25'),
--     (3, 7, 4, 3, 'Average performance.', '2023-01-30'),
--     (4, 8, 3, 2, 'Disappointed with quality.', '2023-02-05'),
--     (5, 10, 4, 4, 'Good value for the price.', '2023-02-10'),
--     (6, 1, 9, 5, 'Outstanding product.', '2023-02-15'),
--     (7, 2, 15, 3, 'Not as expected.', '2023-02-20'),
--     (8, 5, 12, 4, 'Satisfied with the purchase.', '2023-02-25'),
--     (9, 7, 16, 5, 'Highly recommended.', '2023-03-01');

-- -- Add 20 rows of dummy data to the SellerReview table
-- INSERT INTO SellerReview (sid, aid, stars, description, review_date)
-- VALUES
--     (1, 3, 4, 'Reliable seller.', '2023-01-17'),
--     (1, 4, 5, 'Great seller!', '2023-01-22'),
--     (2, 9, 3, 'Average experience.', '2023-01-27'),
--     (5, 15, 4, 'Prompt delivery.', '2023-02-01'),
--     (7, 12, 5, 'Excellent customer service.', '2023-02-06'),
--     (8, 16, 4, 'Smooth transaction.', '2023-02-11'),
--     (10, 3, 3, 'Could be better.', '2023-02-16'),
--     (1, 9, 4, 'Consistent quality.', '2023-02-21'),
--     (2, 4, 5, 'Top-notch seller!', '2023-02-26'),
--     (5, 4, 4, 'Hassle-free experience.', '2023-03-03');

\COPY Users FROM 'Users.csv' WITH DELIMITER ',' NULL '' CSV
-- since id is auto-generated; we need the next command to adjust the counter
-- for auto-generation so next INSERT will not clash with ids loaded above:
SELECT pg_catalog.setval('public.users_id_seq',
                         (SELECT MAX(id)+1 FROM Users),
                         false);
\COPY Seller FROM 'Seller.csv' WITH DELIMITER ',' NULL '' CSV

\COPY Category FROM 'Category.csv' WITH DELIMITER ',' NULL '' CSV
-- since id is auto-generated; we need the next command to adjust the counter
-- for auto-generation so next INSERT will not clash with ids loaded above:
SELECT pg_catalog.setval('public.category_id_seq',
                         (SELECT MAX(cid)+1 FROM Users),
                         false);

\COPY Product FROM 'Product.csv' WITH DELIMITER ',' NULL '' CSV
SELECT pg_catalog.setval('public.products_id_seq',
                         (SELECT MAX(pid)+1 FROM Products),
                         false);

\COPY Inventory FROM 'Inventory.csv' WITH DELIMITER ',' NULL '' CSV

\COPY ProductReview FROM 'ProductReview.csv' WITH DELIMITER ',' NULL '' CSV

\COPY SellerReview FROM 'SellerReview.csv' WITH DELIMITER ',' NULL '' CSV



