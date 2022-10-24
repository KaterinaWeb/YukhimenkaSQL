
-- 1.Самый дорогой товар, который купил каждый покупатель 

WITH t1 AS 
(SELECT customer_id, 
concat(c.first_name, ' ', c.last_name) AS customer_name,
product_id, pr_category, price,  
max(price) OVER (PARTITION BY customer_id) as max_price 
FROM orders o 
JOIN product pr 
ON pr.id_product=o.product_id
JOIN customer c 
ON c.id_customer=o.customer_id
JOIN category cat
ON pr.category_id=cat.id_category) 

 SELECT * FROM t1  WHERE price=max_price;

 -- через rank
 WITH t1 AS 
 (SELECT customer_id, concat(c.first_name, ' ', c.last_name) AS customer_name, 
 product_id, pr_category, price,  
max(price) OVER (PARTITION BY customer_id) as max_price, 
dense_rank() over (partition by customer_id order by price desc) as price_rank
FROM orders o 
JOIN product pr 
ON pr.id_product=o.product_id
JOIN customer c 
ON c.id_customer=o.customer_id
JOIN category cat
ON pr.category_id=cat.id_category)
select * from t1 where price_rank=1;

--2. Сумма всех покупок каждого покупателя
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, 
SUM(price) AS invoice
FROM customer c 
JOIN orders o 
ON c.id_customer=o.customer_id
JOIN product pr 
ON pr.id_product=o.product_id
GROUP BY id_customer
ORDER BY SUM(price) DESC;
 
--3. Среднюю стоимость купленного товара каждого клиента по каждой категории
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
pr_category AS category_of_product, ROUND(AVG(price),2) AS Average_price
FROM customer c 
JOIN orders o 
ON c.id_customer=o.customer_id
JOIN product pr 
ON pr.id_product=o.product_id
JOIN category cat
ON pr.category_id=cat.id_category
GROUP BY id_customer, id_category
ORDER BY id_customer;

/*4.Сумма (количество) купленных товаров по каждой категории (один 
 товар может быть куплен несколько раз).*/
SELECT COUNT(o.product_id) AS Amount_of_SoldProducts, pr_category
FROM orders o
JOIN product pr 
ON pr.id_product=o.product_id
JOIN category cat
ON pr.category_id=cat.id_category
GROUP BY pr_category
ORDER BY Amount_of_SoldProducts;

/*5.Вывести имя покупателя, наименование товара и цену, где в имени
категории есть буква a или o, и цена товара больше 150.

!!У меня везде были буквы а и о, поэтому я заменила на буквы а и ф!!!*/
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, product_name,
price
FROM orders o 
JOIN product pr 
ON pr.id_product=o.product_id
JOIN customer c 
ON o.customer_id=c.id_customer
LEFT JOIN category cat
ON pr.category_id=cat.id_category
WHERE (pr_category LIKE '%a%' or pr_category LIKE '%f%') AND price>150;


/* 6. Вывести наименование товара и выручку от него (т.е. его стоимость 
умноженная на количество раз, сколько его заказали).*/
SELECT DISTINCT product_name, 
price*COUNT(product_id) AS income
FROM orders o 
join product pr
on pr.id_product=o.product_id
GROUP BY product_id
ORDER BY income ASC;

/* 7.Вывести наименования товара и сколько раз он был куплен (заказан), 
для товаров, которые были заказаны от 2 до 5 раз (включительно).*/
SELECT DISTINCT product_name, COUNT(product_id) AS number_of_orders
FROM orders o 
JOIN product pr
ON pr.id_product=o.product_id
GROUP BY product_id
HAVING COUNT(product_id) BETWEEN 2 AND 5;

/* 8. Вывести 2 столбца: имя покупателя и имя товара, если один покупатель 
купил несколько товаров - он будет в результативной таблице несколько раз,
если покупатель ничего не купил - всё равно вывести его имя. 
(пара покупатель - товар должна быть уникальна). */
SELECT DISTINCT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, 
product_name
FROM customer c 
LEFT JOIN orders o
ON o.customer_id=c.id_customer
LEFT JOIN product pr
ON pr.id_product=o.product_id;

--9. Вывести имена товаров, которые ни разу не были заказаны.
SELECT product_name FROM product pr
LEFT JOIN orders o
ON pr.id_product=o.product_id
WHERE id_order IS NULL;

/* 10. Вывести имя категории и цены самого дорого товара 
(и имя товара тоже вывести) в ней, но только для тех, 
где самый дорогой товар дороже 1000. */

SELECT pr_category, MAX(price) FROM product pr
JOIN category cat 
ON pr.category_id=cat.id_category
GROUP BY category_id
HAVING MAX(price)>1000;