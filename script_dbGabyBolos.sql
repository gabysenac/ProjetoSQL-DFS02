-- apagando banco de dados
drop database dbGabyBolos;

-- criando bando de dados
create database dbGabyBolos;

--acessando o banco de dados
use dbGabyBolos;

--visualizando as tabelas no banco de dados
show tables;

--comando para executar script sql
source C: (nome da pasta).sql

--criando tabelas
create table tbFuncionarios(
codfunc int,
nome varchar(100),
email varchar(100),
telefone char(9)
);

show tables;

desc tbFuncionarios;

