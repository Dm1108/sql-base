INSERT INTO internet_shop.users (user_name, email)
VALUES
    ('Vasya', '123@mail.ru'),
    ('Petya', '324@mail.ru'),
    ('Olya', '234325@mail.ru'),
    ('Semen', '345453@mail.ru'),
    ('Tanya', '09079@mail.ru');

SELECT * FROM internet_shop.users;

INSERT INTO internet_shop.products (product_name, category, price)
VALUES
    ('apple', 'fruit', 100.99),
    ('juice', 'grocery', 150.00),
    ('milk', 'dairy', 120.00),
    ('melon', 'grocery', 200.00),
    ('bread', 'grocery', 40.00);

SELECT * FROM internet_shop.products;

INSERT INTO internet_shop.orders (order_id, user_id)
VALUES
    (1, 3),
    (2, 4),
    (3, 1),
    (4, 2),
    (5, 5);

SELECT * FROM internet_shop.orders;

INSERT INTO internet_shop.order_items (order_id, product_id, quantity)
VALUES
    (5, 1, 4),
    (1, 2, 1),
    (3, 4, 3),
    (4, 3, 1),
    (2, 5, 7);

SELECT * FROM internet_shop.order_items;