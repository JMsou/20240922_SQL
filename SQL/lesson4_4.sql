/*從payment資料表，取出所有員工的訂單總數*/
SELECT *
FROM payment;

SELECT staff_id,COUNT(payment_id)訂單總數
FROM payment
GROUP BY staff_id;

/*取出每個員工,在每一個客戶的訂單金額總合*/
SELECT 	staff_id, 
		customer_id,
		SUM(amount)total_consumption_amount
FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id ASC;

/*	取出每日訂單的總合
	cast operator 	*/
SELECT payment_date::date AS 日期, SUM(amount)訂單總合
FROM payment
GROUP BY 日期
ORDER BY 日期;