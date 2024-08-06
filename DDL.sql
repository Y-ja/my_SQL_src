DROP TABLE NewBook;

CREATE TABLE NewBook (
    bookid INTEGER,
    bookname VARCHAR(20),
    publisher VARCHAR(20),
    price INTEGER,
    PRIMARY KEY(bookid)
    );
    
CREATE TABLE NewOrders (
  `orderid` INTEGER,
  `custid` INTEGER NOT NULL,
  `bookid` INTEGER NOT NULL,
  `saleprice` INTEGER,
  `orderdate` DATE ,
  PRIMARY KEY (orderid),
  FOREIGN KEY(custid) REFERENCES 
  NewCustomer(custid) ON DELETE CASCADE);

ALTER TABLE NewBook ADD isbn VARCHAR(13);