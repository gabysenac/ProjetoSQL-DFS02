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
nome varchar(50) not null,
siglaEst char(2),
primary key (codCid),
foreign key (siglaEst) references tbEstados(siglaEst)
);


create table tbClientes(
codCli int not null,
nome varchar(50) not null,
end varchar(50) not null,
renda decimal(9,2) default 0 check (renda >= 0),
sexoCi char(1) not null default 'F' check(sexo in('F', 'M')),
codCid int,
primary key (codCli),
foreign key (codCid) references tbCidades(codCid)
);


create table tbConj(
codConj int not null,
nome varchar(50) not null,
renda decimal(9,2) default 0 check (renda >= 0),
sexo char(1) not null default 'F' check(sexo in('F', 'M')),
codCli int,
primary key (codConj),
foreign key (codCli) references tbClientes(codCli)
);




create table tbDepedentes(
codDep int not null,
nome varchar(100) not null,
sexo char(1) not null default 'F' check(sexoDep in('F', 'M')),
condFunc int not null,
primary key (codDep),
foreign key (codFunc) references tbFuncionarios(codFunc)
);





create table tbTitulos(
codTit int not null,
nome varchar(50) not null unique,
valCd decimal(9,2) not null check (valCad >= 0),
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
codFunc int not null,
primary key (numPed),
foreign key (codCli) references tbClientes(codCli),
foreign key (codFunc) references tbFuncionarios(codFunc)
);


create table tbTitulosPedido(
qtdCd int not null check (qtdcd >= 1),
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
desc codConj;
desc tbDepedentes;
desc tbTitulos;
desc tbPedidos;
desc tbTitulosPedido;
desc tbTitulosArtista;




