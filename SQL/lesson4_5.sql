SELECT *
FROM payment;

/*GROUP BY 完後，有欄位是多於一筆的就沒辦法這樣顯示eg.amount */
SELECT *
FROM payment
GROUP BY customer_id;

/*這樣只顯示兩欄，customer_id後的資料都可以只有一筆*/
SELECT customer_id, SUM(amount)AS 總合
FROM payment
GROUP BY customer_id;

/*HAVING 只能用在GROUP BY之後*/
SELECT customer_id, SUM(amount)總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id;
HAVING COUNT(customer_id) > 300;



/*SUBQUERY*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;
/*MAINQUERY+SUBQUERY*/
SELECT city
FROM city
WHERE country_id = (--若子查詢有多筆的話，請改用IN--
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);
/*有時關聯用法也可以做到主子查詢的效果*/
SELECT *
FROM city JOIN country ON city.country_id=country.country_id
WHERE country='Taiwan';