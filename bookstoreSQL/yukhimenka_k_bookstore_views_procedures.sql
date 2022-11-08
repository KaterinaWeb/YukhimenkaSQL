
CREATE VIEW total_sum AS
SELECT number_order, CONCAT(first_name, ' ', last_name) AS customer_name, 
SUM(amount_of_books) AS total_books_number, SUM(total_cost) AS total_sum, 
(SELECT 
CASE
WHEN SUM(total_cost)<20 THEN '0%'
WHEN SUM(total_cost) BETWEEN 20 AND 60 THEN '5%'
ELSE '10%'
END) AS discount,
(SELECT
CASE
WHEN SUM(total_cost) BETWEEN 20 AND 60 THEN ROUND(SUM(total_cost)*0.95,2)
WHEN SUM(total_cost) > 60 Then ROUND(SUM(total_cost)*0.9,2)
ELSE ROUND(SUM(total_cost)*1,2)
END) AS sum_with_discount
FROM cost_of_order cod
JOIN customers c
ON c.id_customer=cod.customer_id
GROUP BY number_order;

SELECT * FROM total_sum;

DELIMITER $$
CREATE PROCEDURE get_bill(number_of_order VARCHAR(10))
BEGIN
SELECT number_order, customer_name, sum_with_discount
FROM total_sum
WHERE number_order=number_of_order;
END $$
DELIMITER ;

CALL get_bill('041122-3');

-- Запросы на проверку работы индексов

EXPLAIN 
SELECT b.title, a.first_name, a.last_name, 
bg.genre, p.pub_house, b.ISBN_13, b.year_of_issue, b.price 
FROM additional_information ai
JOIN books b
ON ai.book_id=b.id_book
JOIN book_genre bg
ON ai.genre_id=bg.id_genre
JOIN publishers p
ON ai.publish_id=p.id_publish
JOIN book_format bf
ON ai.format_id=bf.id_format
JOIN authors a
ON b.author_id=a.id_author
WHERE b.title='Moby-Dick';

EXPLAIN
SELECT b.title, a.first_name, a.last_name, sh.shop_address, sh.shop_phone
FROM shop_has_book shb
JOIN books b
ON shb.book_id=b.id_book
JOIN authors a
ON b.author_id=a.id_author
JOIN shops sh
ON shb.shop_id=sh.id_shop
WHERE a.last_name='Fitzgerald';