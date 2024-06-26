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


--delete from tbProdutos where codProd = 2;

select * from tbProdutos;

select codProd as 'Código', 
descricao as 'Descrição', 
marca as 'Marca', 
preco as 'Preço' from tbProdutos;




-- colunas virtuais
select codProd,descricao,marca,preco 'promoção' as 'promo'
from tbProdutos;


 select codProd as 'Código',
 descricao as 'Descrição', marca as 'Marca',
 'Sim' as 'Vendido', 
 preco as 'Preço' from tbprodutos;


 -- ultilizando calculos no sql operadores (conta junto da prompt)
 update tbProdutos set preco = preco * 1.10 where codProd = 3;

 select * from tbProdutos;


-- calculo de 10% nos preços das tabelas
 select preco * 0.90 as 'Desconto' from tbProdutos;


 update tbProdutos set preco = preco * 0.20 where codProd =1;
 	select * from tbProdutos;








-- tipos de busca (select)
select * from tbProdutos;
select descricao,preco from tbProdutos;
 
-- clausula where / operadores 
select * from tbProdutos where preco 

