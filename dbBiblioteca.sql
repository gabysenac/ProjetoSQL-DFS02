drop database dbBiblioteca;

create database dbBiblioteca;

use dbBiblioteca;

create table tbGereros(
idGenero int not null auto_increment,
descricao varchar(100),
primary key(idGenero)
);

create table tbAutores(
idAutor int not null auto_increment,
nome varchar(100),
email varchar(100),
primary key(idAutor)
);

create table tbClientes(
idCLiente int not null auto_increment,
nome varchar(100),
telefone char(9),
primary key(idCliente)
);

create table tbLivros(
idLivro int not null auto_increment,
titulo varchar(100),
preco decimal(9,2),
estoque int,   
idGenero int not null,
primary key(idLivro),
foreign key(idGenero) references tbGereros(idGenero)
);

create table tbVendas(
idVenda int not null auto_increment,
data date,
total decimal(9,2),
idCLiente int not null,
primary key(idVenda),
foreign key(idCliente) references tbClientes(idCLiente)
);

create table tbItens_Vendas(
idVenda int not null,
idLivro int not null,
quantidade int,
subtotal decimal(9,2),
foreign key(idVenda) references tbVendas(idVenda),
foreign key(idLivro) references tbLivros(idLivro)
);

create table tbEscreve(
idLivro int not null,
idAutor int not null,
foreign key(idLivro) references tbLivros(idLivro),
foreign key(idAutor) references tbAutores(idAutor)
);

desc tbGereros;
desc tbAutores;
desc tbClientes;
desc tbLivros;
desc tbVendas;
desc tbItens_Vendas,
desc tbEscreve;

