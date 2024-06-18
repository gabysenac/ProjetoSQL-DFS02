drop database DB_CDS;

create database DB_CDS;

use DB_CDS;

create table tbArtistas(
codArt int not null,
nome varchar(100) not null unique,
primary key (codArt)
);



create table tbGravadoras(
codGrav int not null,
nome varchar(50) not null unique,
primary key (codGrav)
);




create table tbCategorias(
codCat int not null,
nome varchar(50) not null unique,
primary key (codCat)
);



create table tbEstados(
siglaEst char(2) not null,
nome varchar(50) not null unique,
primary key (siglaEst)
);


create table tbFuncionarios(
codFunc int not null,
nome varchar(50) not null,
endereco varchar(100) not null,
salario decimal(9,2) not null default 0 check(salario >=0),
sexo char(1) not null default 'F' check(sexo in('F','M')),
primary key(codFunc)
);




create table tbCidades(
codCid int not null,
siglaEst char(2) not null,
nome varchar(50) not null,
primary key (codCid),
foreign key (siglaEst) references tbEstados(siglaEst)
);


create table tbClientes(
codCli int not null,
nome varchar(50) not null,
endereco varchar(50) not null,
renda decimal(9,2) default 0 check (renda >= 0),
sexo char(1) not null default 'F' check(sexo in('F', 'M')),
codCid int not null,
primary key (codCli),
foreign key (codCid) references tbCidades(codCid)
);


create table tbConj(
codConj int not null,
nome varchar(50) not null,
renda decimal(9,2) default 0 check (renda >= 0),
sexo char(1) not null default 'F' check(sexo in('F', 'M')),
codCli int not null,
primary key (codConj),
foreign key (codCli) references tbClientes(codCli)
);



create table tbDepedentes(
codDep int not null,
nome varchar(100) not null,
sexo char(1) not null default 'F' check(sexo in('F', 'M')),
codFunc int not null,
primary key (codDep),
foreign key (codFunc) references tbFuncionarios(codFunc)
);

create table tbTitulos(
codTit int not null,
nome varchar(50) not null unique,
valCd decimal(9,2) not null check (valCd >= 0),
qtdEstq int not null check (qtdEstq >= 0),
codCat int not null,
codGrav int not null,
primary key (codTit),
foreign key (codCat) references tbCategorias(codCat),
foreign key (codGrav) references tbGravadoras(codGrav)
);


create table tbPedidos(
numPed int not null,
dataPed datetime not null,
valPed decimal(9,2) not null check (valPed >= 0),
codCli int not null,  -- Adicionei a coluna codCli para referenciar tbClientes
codFunc int not null,
primary key (numPed),
foreign key (codCli) references tbClientes(codCli),  -- Referência a tbClientes
foreign key (codFunc) references tbFuncionarios(codFunc)
);


create table tbTitulosPedido(
numPed int not null,
codTit int not null,
qtdCd int not null check (qtdCd >= 1),
valCd decimal(9,2) not null check (valCd >= 0),
foreign key (numPed) references tbPedidos(numPed),
foreign key (codTit) references tbTitulos(codTit)
);



create table tbTitulosArtista(
foreign key (codTit) references tbTitulos(codTit),
foreign key (codArt) references tbArtistas(codArt)
);











desc tbArtistas;
desc tbGravadoras;
desc tbCategorias;
desc tbEstados;
desc tbFuncionarios;
desc tbCidades;
desc tbClientes;
desc tbConj;
desc tbDepedentes;
desc tbTitulos;
desc tbPedidos;
desc tbTitulosPedido;
desc tbTitulosArtista;




