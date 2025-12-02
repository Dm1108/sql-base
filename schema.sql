CREATE SCHEMA internet_shop;

CREATE TABLE internet_shop.users (
    user_id   SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email     VARCHAR(100) UNIQUE NOT NULL,
    registred_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE internet_shop.products (
    product_id   SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category     VARCHAR(50) UNIQUE NOT NULL,
    price        NUMERIC(10, 2) CHECK (price > 0)
);

CREATE TABLE internet_shop.orders (
    order_id   SERIAL PRIMARY KEY,
    user_id    INT  NOT NULL REFERENCES internet_shop.users (user_id),
    order_date DATE NOT NULL DEFAULT CURRENT_DATE CHECK (order_date <= CURRENT_DATE)
);

CREATE TABLE internet_shop.order_items (
    order_id   INT NOT NULL REFERENCES internet_shop.orders (order_id) ON DELETE CASCADE,
    product_id INT NOT NULL REFERENCES internet_shop.products (product_id) ON DELETE CASCADE,
    quantity   INT CHECK (quantity > 0) DEFAULT 1,
    PRIMARY KEY (order_id, product_id)
);

