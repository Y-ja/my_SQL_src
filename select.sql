SELECT * FROM Book;
SELECT * FROM Customer;
SELECT * FROM madangdb.Book;

SELECT bookname, price FROM Book;

SELECT DISTINCT publisher FROM Book;

/* WHERE */
/* 3-4 */
SELECT * FROM Book WHERE price <20000;
/* 3-5 */
SELECT * FROM Book WHERE price BETWEEN 10000 AND 20000;
SELECT * FROM Book WHERE price >= 10000 AND price <= 20000;
SELECT * FROM Book WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

/* 3-6 */
SELECT * FROM Book WHERE publisher IN ('굿스포츠' , '대한미디어');
SELECT * FROM Book WHERE publisher Not IN ('굿스포츠' , '대한미디어');

/* 3-7 */
SELECT bookname , publisher FROM Book WHERE  bookname LIKE '축구의 역사';
/* 3-8 */
SELECT bookname , publisher FROM Book WHERE  bookname LIKE '%축구%';
/* 3-8 */
SELECT * FROM Book WHERE  bookname LIKE '%_구%';

/* ORDER BY */
/* 3-9 */
SELECT * FROM Book WHERE price >= 10000 ORDER BY price DESC , publisher ASC;

/*Func*/
/* 3-15 */
SELECT SUM(saleprice) FROM Orders;
SELECT SUM(saleprice) AS 총매출 FROM Orders; -- > ''를 해주면 더 좋음!
SELECT AVG(saleprice) AS 총매출 FROM Orders; -- > ''를 해주면 더 좋음!

/* 3-16 */
SELECT COUNT(*) FROM Orders;

/* Group by */
SELECT custid, 
COUNT(*) AS 도서수량, 
SUM(saleprice) AS 총액,
MAX(orderdate) AS 최근거래일자
FROM Orders
GROUP BY custid;

/* HAVING */
SELECT custid, COUNT(*) FROM Orders WHERE saleprice >= 8000 GROUP BY custid HAVING COUNT(*) >= 2;

/* 연습문제 1번*/
-- 1
SELECT bookname FROM Book WHERE bookid = '1';
-- 2
SELECT bookname FROM Book WHERE price >= 20000;
-- 3
SELECT sum(saleprice) AS '박지성 총 구매액 ' FROM Orders WHERE custid=1;
-- 4
SELECT count(*)  AS '박지성 총 구매수 ' FROM Orders WHERE custid=1;
-- 1-1(조인예시)
SELECT Customer.name , SUM(saleprice) FROM Orders , Customer 
WHERE Orders.custid = Customer.custid
AND Customer.name = '박지성'
GROUP BY Customer.name ;