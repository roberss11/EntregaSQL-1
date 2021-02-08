create database if not exists SQL1;

use SQL1;

drop table if exists fabricantes;
drop table if exists articulos;

create table fabricantes (

codigo int unsigned auto_increment unique not null,

nombre varchar(100) default 'sin nombre',

primary key (codigo) );

create table articulos (

codigo int unsigned auto_increment unique not null, 

nombre varchar(100) default 'sin nombre',

precio double(100,2) unsigned,

fabricante int,

primary key (codigo) );

describe fabricantes;

insert into fabricantes (nombre) values 

('Nintendo'),
('SONY'),
('HP'),
('MSI'),
('ACER'),
('Apple'),
('DELL');

insert into articulos (nombre,precio,fabricante) values 

( 'PlayStation 5', 500.00, 2),
( 'GP65 Leopard', 1300.00, 4),
( 'GE75 Raider', 2299.99, 4),
( 'Mac Book Pro', 1600.00, 6),
( 'Nintendo Switch', 319.99, 1),
( 'Nintendo DS', 49.59, 1),
( 'iMac', 1299.99,6),
( 'Acer Nitro 5', 779.00, 5),
( 'Envy 15', 1199.00, 3),
( 'Portátil E6220', 200.00, 7),
( 'PlayStation', null,2),
( 'PlayStation 2', null, 2),
( 'PlayStation 3', 50.0, 2),
( 'PlayStation 4', 150.0, 2);


-- 1
select nombre from articulos;
-- 2
select nombre, precio from articulos;
-- 3
select * from articulos;
-- 4
select nombre from articulos where precio <= 200;
-- 5
select * from articulos where precio >= 60 and precio <= 100;
-- 6
select avg(precio) from articulos;
-- 7
select count(*) from articulos; 
-- 8
select count(*) from fabricantes; 
-- 9
select count(*) from articulos where precio > 180;
-- 10
select nombre,precio from articulos where precio >= 90 order by precio asc, nombre;
-- 11
select articulos.*, fabricantes.* from articulos, fabricantes where articulos.fabricante = fabricantes.codigo;
-- 12
select fabricante, avg(precio) from articulos group by fabricante;
-- 13
select * from articulos where nombre like "N%";
-- 14
select * from articulos where nombre like "P%" or precio > 2000 and precio < 2500;
-- 15
select * from fabricantes where nombre like "%e%" and nombre not like "%o";
-- 16
select * from articulos where precio is null;
