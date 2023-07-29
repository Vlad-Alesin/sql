/* Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '*/


drop PROCEDURE if EXISTS convert_time;

delimiter //

create PROCEDURE convert_time
(
	seconds int
)
begin 
    declare result varchar(50) DEFAULT "";
	set result = concat(result, floor(seconds/86400), " days ", floor((seconds/3600)%24), ' hours ', floor((seconds/60)%60), ' minutes ', seconds - (floor(seconds/86400)*86400 + floor((seconds/3600)%24)*3600 + floor((seconds/60)%60)*60), ' seconds');
    select result;
end //

call convert_time('123456')






