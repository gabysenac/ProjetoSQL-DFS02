drop database dbBarbearia;

create database dbBarbearia;

use dbBarbearia;


create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
marca varchar(50),
preco decimal(9,2),
primary key(codProd)
);

insert into tbProdutos(descricao,marca,preco) 
	values('Shampoo', 'Nivea', 30.0);

insert into tbProdutos(descricao,marca,preco) 
	values('Sabonete', 'Phebo', 50.0);

insert into tbProdutos(descricao,marca,preco) 
	values('Creme de barbear', 'Barbers', 70.0);

insert into tbProdutos(descricao,marca,preco) 
	values('Gel para cabelos', 'Salome', 25.0);


select * from tbProdutos;


delete from tbProdutos where codProd = 2;

select * from tbProdutos;