Create schema BOOKSTORE;

Create table Customers (
cid int,				cname varchar(25),	address varchar(50),
age int,				income_level int,	username varchar(15),
password varchar(20),	
primary key (cid),
check (age >= 18),	check (age <= 100)
);

Create table Publisher (
publisherid int,	name varchar(20),			address varchar(50),
discount float, 	check (discount > 1.00),	check (discount < 10.00),
primary key (publisherid)
);

Create table Books (
isbn int,			title varchar(30),	author varchar(20),
qty_in_stock int,	price float,		cost float,	year_published int,
publisherid int,	
primary key (isbn),
foreign key (publisherid) references Publisher(publisherid)
);

Create table Orders (
ordernum int,			cid int,		cardnum int,	
cardmonth varchar(10),	cardyear int,	order_date varchar(10),	
ship_date varchar(10), 	check (order_date < ship_date),
primary key (ordernum),	
foreign key (cid) references Customers(cid)
);

Create table OrderList (
ordernum int,	isbn int,	quantity int,
primary key (ordernum, isbn),
foreign key (isbn) references Books(isbn),
foreign key (ordernum) references Orders(ordernum)
);

Create table StockManager (
isbn int,	quantity int,
primary key (isbn),
foreign key (isbn) references Books(isbn)
);