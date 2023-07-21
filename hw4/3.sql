DROP table test_a;
DROP table test_b;

create table test_a 
(
	id int,
	data varchar(1)
);

create table test_b 
(
	id int
);

insert into test_a(id, data) values
	(10, 'A'),
	(20, 'A'),
	(30, 'F'),
	(40, 'D'),
	(50, 'C');

insert into test_b(id) values
	(10),
	(30),
	(50);

select a.id, data  from test_a a
	left join test_b b on a.id=b.id
	where b.id is null;