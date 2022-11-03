select *  from book a  where a.produser ='prod3';
select * from poem s where s.a_id in (select a.id from author a where a.second_name='Кинг');
select * from poem s where s.b_id in (select a.id from book a where a.produser='prod11');
--truncate table book restart identity cascade;
--truncate table author restart identity cascade;
select *  from author  a3   where a3.id in (
select bc.id from book_case bc where bc.ar_id in (
select a2.id from archive a2 where a2."number"=2)); 