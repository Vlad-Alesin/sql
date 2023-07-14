truncate table orders; 

create table if not exists orders (
	orderid INT PRIMARY KEY AUTO_INCREMENT,
    employeeid varchar(5),
    amount float,
    orderstatus text
);

insert into orders (employeeid, amount, orderstatus) values
	('e03', 15.00, 'open'),
	('e01', 25.50, 'open'),
    ('e05', 100.70, 'closed'),
    ('e02', 22.18, 'open'),
    ('e04', 9.50, 'cancelled'),
    ('e04', 99.99, 'open');

select orderid, orderstatus, 
case
	when orderstatus like 'open'
    then 'order is in open state'
    when orderstatus like 'cancelled'
    then 'order is cancelled'
    when orderstatus like 'closed'
    then 'order is closed'
end as order_summary from orders;