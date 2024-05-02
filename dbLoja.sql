-- apagando bd se existir
drop database dbLoja;

--criando banco de dados 
create database dbLoja;

--acessando bd
use dbLoja;

-- visualizando banco de dados
show databases;

-- criando as tabelas no bd
create table tbUsuarios(
codUsu  int,
nome varchar(50),
senha varchar (20)
);


create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
cpf varchar(14),
telCel char(10)
);

-- visualizando as tabelas criadas
show tables;

-- visualizando as estruturas da tabela
describe tbUsuarios;
desc tbFuncionarios;

-- inserindo registros nas tabelas
insert into tbUsuarios(codUsu,nome,senha)
	values(1,'maria.gabrielly', 'deximbranco');

	insert into tbFuncionarios(codFunc,nome, email,cpf,telCel)
	values(1, 'Maria Gabrielly Benjamim', 'maia.gbenjamim@hotmail.com', '478.856.875-85', '98523-8547');

-- visualizando os registros nos campos da tabelas
select * from tbUsuarios;
select * from tbFuncionarios;