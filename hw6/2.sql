/* Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 */

drop PROCEDURE if EXISTS even_num;

delimiter //

create PROCEDURE even_num
(
	input_num INT
)
begin 
	declare n int;
	declare i int default 2;
    declare result varchar(50) DEFAULT "";
    set n = input_num;
repeat
	set result = concat(result, i, " ");
    set i = i +2;
	until i >= n+1
    end repeat;
    select result;
end //

call even_num (10);
    
