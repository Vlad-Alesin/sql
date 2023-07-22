drop table train;

create table if not EXISTS train (
	train_id integer,
    station_time time  
);

insert into train values 
	(110, "10:00:00"),
    (110, "10:50:00"),
    (110, "11:20:00");
	
select train_id, station_time, 
lead(station_time, 1, 0) over (PARTITION BY train_id order by station_time) - station_time  as time_to_next_station 
from train 
