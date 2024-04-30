-- Create the Users table
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2)
);

-- Create the Seller table
CREATE TABLE Seller (
    seller_id INT unique,
    FOREIGN KEY (seller_id) REFERENCES Users(id)
);

-- Create the Category table
CREATE TABLE Category (
    cid SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Create the Product table
CREATE TABLE Product (
    pid SERIAL PRIMARY KEY,
    cid INT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    available BOOLEAN,
    FOREIGN KEY (cid) REFERENCES Category(cid)
);

-- Create the Inventory table
CREATE TABLE Inventory (
    pid INT,
    sid INT,
    quantity_in_stock INT,
    PRIMARY KEY (pid, sid),
    FOREIGN KEY (pid) REFERENCES Product(pid),
    FOREIGN KEY (sid) REFERENCES Seller(seller_id)
);

-- Create the Order table
CREATE TABLE Orders (
    Oid SERIAL PRIMARY KEY,
    uid INT,
    num_items INT,
    total_price DECIMAL(10, 2),
    status VARCHAR(50),
    date_ordered DATE,
    FOREIGN KEY (uid) REFERENCES Users(id)
);

-- Create the ProductReview table
CREATE TABLE ProductReview (
    pid INT,
    sid INT,
    aid INT,
    stars INT,
    review TEXT,
    review_date DATE,
    PRIMARY KEY (pid, sid, aid),
    FOREIGN KEY (pid) REFERENCES Product(pid),
    FOREIGN KEY (sid) REFERENCES Seller(seller_id),
    FOREIGN KEY (aid) REFERENCES Users(id)
);

-- Create the SellerReview table
CREATE TABLE SellerReview (
    sid INT,
    aid INT,
    stars INT,
    description TEXT,
    review_date DATE,
    PRIMARY KEY (sid, aid),
    FOREIGN KEY (sid) REFERENCES Seller(seller_id),
    FOREIGN KEY (aid) REFERENCES Users(id)
);

-- Create the Cart table
CREATE TABLE Cart (
    aid INT,
    pid INT,
    sid INT,
    quantity INT,
    price_per_item DECIMAL(10, 2),
    PRIMARY KEY (aid, pid, sid),
    FOREIGN KEY (aid) REFERENCES Users(id),
	FOREIGN KEY (pid) REFERENCES Product(pid),
    FOREIGN KEY (sid) REFERENCES Seller(seller_id)
);

