create table Customer1
(
cust number(10),
cname varchar2(20),
city varchar2(20),
primary key(cust)
);

create table orders
(
order_no number(10),
odate date,
cust number(10),
ord_amt number(20),
primary key(order_no),
foreign key(cust) references Customer1(cust);
);

create table item
(
item_no number(10),
unit_price number(20),
primary key(item_no)
);
-
create table order_item
(
order_no number(10),
item_no number(10),
qty number(10),
primary key(order_no),
foreign key(item_no) references item(item_no)
);

create table warehouse
(
warehouse_no number(10),
city varchar2(10),
primary key(warehouse_no)
);

create table shipment
(
order_no number(10),
warehouse_no number(10),
ship_date date,
PRIMARY key(order_no),
foreign key(warehouse_no) references warehouse(warehouse_no)
);

insert into Customer1 values(771,'Pushpa','Bangalore');
insert into Customer1 values(772,'Suman','Mumbai');
insert into Customer1 values(773,'Sourav','Calicut');
insert into Customer1 values(774,'Laila','Hyderabad');
insert into Customer1 values(775,'Faizal','Bangalore');

insert into orders values(111,'22-JAN-02',771,18000);
insert into orders values(112,'30-JUL-02',774,6000);
insert into orders values(113,'03-APR-02',775,9000);
insert into orders values(114,'03-NOV-02',775,29000);
insert into orders values(115,'10-DEC-02',773,29000);
insert into orders values(116,'19-AUG-02',772,56000);
insert into orders values(117,'10-SEP-02',771,20000);
insert into orders values(118,'20-NOV-02',775,29000);
insert into orders values(119,'13-FEB-02',774,29000);
insert into orders values(120,'13-OCT-02',775,29000);

insert into item values(5001,503);
insert into item values(5002,750);
insert into item values(5003,150);
insert into item values(5004,600);
insert into item values(5005,890);

insert into order_item values(111,5001,50);
insert into order_item values(112,5003,20);
insert into order_item values(113,5002,50);
insert into order_item values(114,5005,60);
insert into order_item values(115,5004,90);
insert into order_item values(116,5001,10);
insert into order_item values(117,5003,80);
insert into order_item values(118,5005,50);
insert into order_item values(119,5002,10);
insert into order_item values(120,5004,45);

insert into warehouse values(1,'delhi');
insert into warehouse values(2,'bombay');
insert into warehouse values(3,'chennai');
insert into warehouse values(4,'banglore');
insert into warehouse values(5,'bangalore');
insert into warehouse values(6,'delhi');
insert into warehouse values(7,'bombay');
insert into warehouse values(8,'chennai');
insert into warehouse values(9,'delhi');
insert into warehouse values(10,'bangalore');

insert into shipment values(111,1,'10-FEB-02');
insert into shipment values(112,5,'10-SEP-02');
insert into shipment values(113,8,'10-FEB-03');
insert into shipment values(114,3,'10-DEC-03');
insert into shipment values(115,9,'19-JAN-04');
insert into shipment values(116,1,'20-SEP-04');
insert into shipment values(117,5,'10-SEP-04');
insert into shipment values(118,7,'30-NOV-04');
insert into shipment values(119,7,'30-APR-05');
insert into shipment values(120,6,'21-DEC-05');


select shipment.order_no,warehouse.city from shipment,warehouse where warehouse.warehouse_no=shipment.warehouse_no and warehouse.city='bangalore';







