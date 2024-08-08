create database pedidos;
use pedidos;
create table clientes(
id int primary key auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50)
);
insert into clientes(nombre,apellido,email) values
('Juan','Pepe','pepe@gmail.com'),
('Rosa','Velez','rosa@gmail.com'),
('Marco','Pola','polo@gmail.com');

create table ordenes(
id int primary key auto_increment,
fecha date not null,
total decimal(8,2),
cliente_id int,
foreign key (cliente_id)  references clientes(id)
);
insert into ordenes(fecha,total,cliente_id) values
('2024-03-01', 400.50,1),
('2024-07-25',300.99,2),
('2024-07-24',200.85,1);

select * from clientes
join ordenes on ordenes.cliente_id = cliente_id;
