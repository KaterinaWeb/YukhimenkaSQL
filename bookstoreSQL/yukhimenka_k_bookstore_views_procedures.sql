
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