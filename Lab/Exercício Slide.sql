#Exercício 1
drop database if exists Banco;

create database if not exists Banco;
use Banco;
#Exercício 3
create table if not exists Cliente(
	ID int not null auto_increment primary key,
    nome varchar(50) not null,
    cpf varchar(50) not null,
    enderco varchar(50) not null
);

select * from Cliente;
#Exercício 4
insert into Cliente() values (default, "Rodriguinho da XJ", "157", "Pelas vielas da vida");
insert into Cliente() values (default, "Ricardo da P9", "Mapa Pike", "Camburao");
#Exercício 5
alter table Cliente add ano_de_nasc int;
#Exercício 6
update Cliente set ano_de_nasc = 2001 where id = 1;
update Cliente set ano_de_nasc = 1999 where id = 2;
#Exercício 7
delete from Cliente where id = 1;
