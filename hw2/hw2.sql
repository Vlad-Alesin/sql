truncate table sales; 

create table if not exists sales (
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date date,
    bucket int
);

insert into sales (order_date, bucket) values
	('2021-01-01', 120),
    ('2021-01-01', 200),
    ('2021-01-01', 5),
    ('2021-01-01', 150),
    ('2021-01-01', 500);
    
select id, order_date, bucket,
case
	when bucket < 100
    then 'Маленький заказ'
    when bucket between 101 and 300
    then 'Средний заказ'
    when bucket > 300
    then 'Большой заказ'
end as sale from sales
order by sale;