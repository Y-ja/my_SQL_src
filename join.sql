SELECT * FROM Customer , Orders;
/* 3-21 */
SELECT * FROM 
Customer , Orders WHERE
Customer.custid = Orders.custid 
ORDER BY Orders.orderid ASC;

/* (예제문제1) 각가의 주문한 번호와 책이름을 출력하시오  */ 
SELECT Orders.orderid, Book.bookname
FROM Orders AS Orders
JOIN Book AS Book ON Orders.bookid = Book.bookid;

SELECT name,saleprice FROM
Customer,Orders,Book
WHERE Customer.custid = Orders.custid ;

/* 연습문제 1번*/
-- 1
select count(b.publisher)
from Book as b, Orders as o
where b.bookid=o.bookid and o.custid;
-- 2
select b.bookname, b.price, b.price-o.saleprice
from Book as b, Orders as o, Customer as c
where b.bookid=o.bookid and o.custid=c.custid and name like '박지성';
-- 3
select b.bookname
from Book as b, Orders as o
where b.bookid=o.bookid and o.custid <> (select custid from Customer where name='박지성');