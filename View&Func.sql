alter table parking.parking_place add car_id int4;
select * from parking.parking_place pp full join parking.parking p on pp.parking_id =p.id ;

create view free_places (place_floor,place_number,parking_number,parking_place) as 
select pp.floor, pp.number, p.name,p.address
from parking_place pp 
full outer join parking p on pp.parking_id =p.id 
where p.id is null;

create function mark_overtime() returns "orders" as 
'update "orders" 
set overtime = true
where date_to < now()
returning "orders"'
language sql;

select mark_overtime();

create function update_date(ord orders) returns timestamp as 
$$select $1.date_to + Interval '1 DAY';$$
language sql;


select update_date(row(o.id, null,  null, null, date_to,null)) from orders o where o.pp_floor  = 1; 


create or replace function new_pp(pp integer) returns parking_place as
'update parking_place 
set parking_id = 2,
floor = 4
where number = pp and parking_id =3;
select * from parking_place where number = pp and floor = 4'
language sql;

select new_pp(pp.number) from parking_place pp ;

create or replace function make_place_free() returns setof orders as
$body$
declare 
oreder orders;
begin
	for oreder in
	select * from orders o where o.overtime = true 
loop 
	update orders set overtime = false, date_to = null
		where orders.id = oreder.id;
	update parking_place set car_id = null 
		where floor = oreder.pp_floor and "number" = oreder.pp_number;
	
end loop;
end;
$body$
language plpgsql;

select make_place_free();