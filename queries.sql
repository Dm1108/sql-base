SELECT product_name, price
FROM internet_shop.products
WHERE price > 100
ORDER BY price DESC;

SELECT u.user_name, COUNT(*) AS order_count
FROM internet_shop.orders o
JOIN internet_shop.users u on o.user_id = u.user_id
GROUP BY u.user_name;

SELECT o.order_id, u.user_name, p.product_name, oi.quantity
FROM internet_shop.orders o
         LEFT JOIN internet_shop.users u ON o.user_id = u.user_id
         LEFT JOIN internet_shop.order_items oi ON o.order_id = oi.order_id
         LEFT JOIN internet_shop.products p ON p.product_id = oi.product_id;

UPDATE internet_shop.products
SET price=150.99
WHERE product_name='apple';

ALTER TABLE internet_shop.orders DROP CONSTRAINT orders_user_id_fkey;
ALTER TABLE internet_shop.order_items DROP CONSTRAINT order_items_order_id_fkey;
DELETE FROM internet_shop.orders
WHERE user_id=2;

SELECT category, SUM(price) category_sum
FROM internet_shop.products
GROUP BY category
HAVING SUM(price) > 100;

