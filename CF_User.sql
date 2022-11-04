--Fields user
insert into parking.user_park (login,"password",first_name ,last_name ,middle_name ,phone_number ,role_id  )
values
('admin','admin','Ivan','Ivanov','',12345678,1),
('diric','diric','Petr','Petrov','',87654321,2),
('employee','employee','Vasya','Rogov','',23456781,3),
('client1','client1','Ruslan','Ruslanov','',34567812,4),
('client2','client1','Alex','Alexandrov','',45678123,4),
('client3','client1','Oleg','Olegov','',56781234,4),
('client4','client1','Ruslan','Ruslanov','',67812345,4),
('client5','client1','Ruslan','Ruslanov','',78123456,4),
('client6','client1','Ruslan','Ruslanov','',76543218,4),
('client7','client1','Ruslan','Ruslanov','',65432187,4),
('client8','client1','Ruslan','Ruslanov','',54321876,4),
('client9','client1','Ruslan','Ruslanov','',43218765,4),
('client10','client1','Ruslan','Ruslanov','',32187654,4),
('client11','client1','Ruslan','Ruslanov','',34587654,4),
('client12','client1','Ruslan','Ruslanov','',34565432,4),
('client13','client1','Ruslan','Ruslanov','',34569811,4),
('client14','client1','Ruslan','Ruslanov','',34561111,4),
('client15','client1','Rusla ','Ruslanov','',34222212,4)

insert into parking.car (model,number,weight,user_id)
values
('Mersedes Benz','a 123 bc',2.0,1),
('Lada','b 234 cd',1.3,2),
('Mazzerati','o 000 oo',1.0,3),
('Honda','a 234 as',1.5,4),
('Audi','a 456 sd',2.0,5),

