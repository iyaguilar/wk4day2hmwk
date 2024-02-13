SELECT *
FROM customers

INSERT INTO Customers (
    name,
    email,
    phone
) VALUES (
    'Dylan K.',
    'dk@thieves.com',
    '123 fun st.'
);

INSERT INTO Movie (
    Title,
    Genre,
    Release_Date
) VALUES (
    'Avatar',
    'Sci-Fi',
    '2009-12-09'
) 

INSERT INTO Ticket (
    Customer_id,
    Movie_id,
    Seat_number,
    Price,
    Purchase_date
) VALUES (
    1,
    1,
    '2009-12-09',
    'A1'
)

INSERT INTO Concession (
    customer_id,
    item,
    Quantity,
    Price
) VALUES (
    1,
    'Popcorn',
    2,
    8.50
)

UPDATE orders
SET order_date = '2024-01-30'
WHERE order_id = 2