/* задание 1 */
create view price 
as select * from auto
		where price < 25000;
        
/* задание 2*/ 
alter view price 
as select * from auto
		where price < 30000;
        
/* задание 3
Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично) */
create view SkodaAudi
as select * from auto
	where mark like 'Skoda' or mark like 'Audi';

/*Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

Есть таблица анализов Analysis:
an_id — ID анализа;
an_name — название анализа;
an_cost — себестоимость анализа;
an_price — розничная цена анализа;
an_group — группа анализов.

Есть таблица групп анализов Groups:
gr_id — ID группы;
gr_name — название группы;
gr_temp — температурный режим хранения.

Есть таблица заказов Orders:
ord_id — ID заказа;
ord_datetime — дата и время заказа;
ord_an — ID анализа.*/

create view Analys
as select an_name, an_price from Analysis an
	join Orders ord on an_id=ord_id
		where  ord_datetime between '05-02-2020' and '11-02-2020';
        



