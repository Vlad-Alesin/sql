create table if not exists phones (
	id INT PRIMARY KEY AUTO_INCREMENT,
    mark VARCHAR(50),
    model VARCHAR(50),
    price INT
);

/*
insert into phones (mark, model, price) values
	('samsung', 'galaxy s23', '73999'),
    ('samsung', 'galaxy a24', '18999'),
    ('xiaomi', 'redmi note 11s', '12000'),
    ('apple', 'iphone 11', '52000'),
    ('techno', 'camon 20 pro', '18000'),
    ('realme', 'c55', '18000'),
    ('xiaomi', 'redmi note 9a', '5000'),
    ('xiaomi', 'redmi note 10c', '8000'); */
    
 /* задание 2 */   
select * from phones
	where mark in (select mark from phones 
				   group by mark
				   having count(mark) > 2);

/* задание 3 */                   
select * from phones 
	where mark like 'samsung'; 
	