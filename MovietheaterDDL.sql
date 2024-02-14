SELECT *
FROM customers



CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100), -- Adjusted length
    email VARCHAR(50),
    phone VARCHAR(50)
);

CREATE TABLE Movie (
    Movie_id SERIAL PRIMARY KEY,
    Title VARCHAR,
    Genre VARCHAR,
    Release_Date DATE
);

CREATE TABLE Ticket (
    Ticket_id SERIAL PRIMARY KEY,
    Customer_id INT REFERENCES Customers(customer_id),
    Movie_id INT,
    Seat_Number VARCHAR (100),
    FOREIGN KEY (Customer_id) References Customers(Customer_id),
    FOREIGN KEY (Movie_id) REFERENCES MOVIE(Movie_id)
);

 CREATe TABLE Concession (
    Concession_id SERIAL PRIMARY KEY,
    Ticket_id INT,
    Item_name VARCHAR,
    Price DECIMAL (10, 2),
    Quantity INT,
    Purchase_date DATE,
    FOREIGN KEY (Ticket_id) REFERENCES Customers(Customer_id)

);

ALTER TABLE order_items
ADD FOREIGN KEY (item_id) REFERENCES items(item_id)