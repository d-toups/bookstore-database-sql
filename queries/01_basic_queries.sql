--01_basic_queries.sql
--Basic retrieval queries

--1. Get all books with their publisher

--2. Find books that are out of stock

--3. List all customers with their orders

Select title from Books Where Books.price > 50;

Select ordernum from Customers, Orders where (Customers.cid = 001 and Customers.cid = Orders.cid);

Select (sum(quantity)) from OrderList, Books, Publisher where (Publisher.publisherid = 002 
	and Books.publisherid = Publisher.publisherid and OrderList.isbn = Books.isbn);

Select distinct cname from Customers, Orders where exists (Select 1 from Orders where ( Customers.cid = Orders.cid) );

Select distinct isbn from StockManager where( quantity = 0 or quantity is null);
