drop database dbBiblioteca;

create database dbBiblioteca;

use dbBiblioteca;

create table tbGeneros(
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
foreign key(idGenero) references tbGeneros(idGenero)
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

desc tbGeneros;
desc tbAutores;
desc tbClientes;
desc tbLivros;
desc tbVendas;
desc tbItens_Vendas,
desc tbEscreve;


-- Tipos de registro
-- Caracter = 'Senac' 
-- Numérico = se for numero inteiro (10), poe numero inteiro, se for real poe real = 20.35 e nao precisa colocar dentro de aspas simples
-- Campo data ( tem o campo data, com apostrofo, com ano, mes e dia 2024-05-16) 
-- Hora (coloca hora minuto e segundos)
-- Boolenado (nao precisa colocar em apostrofo)




-- cadastrando os registros nas tabelas
insert into tbGeneros(descricao)values('Acao');
insert into tbGeneros(descricao)values('Ficcao');
insert into tbGeneros(descricao)values('Aventura');
insert into tbGeneros(descricao)values('Terror');
insert into tbGeneros(descricao)values('Comedia');
insert into tbGeneros(descricao)values('Romance');
insert into tbGeneros(descricao)values('Documentario');


insert into tbAutores(nome,email)values('Colleen Hoover','colleen.hoover@gmail.com');
insert into tbAutores(nome,email)values('Agatha Cristie','agatha.cristie@gmail.com');
insert into tbAutores(nome,email)values('Christina Lauren', 'christina.lauen@gmail.com');
insert into tbAutores(nome,email)values('Jenna Evans', 'jenna.evans@gmail.com');
insert into tbAutores(nome,email)values('Carvalho Rocha', 'carvalho.rocha@gmail.com');
insert into tbAutores(nome,email)values('Augustus Nicodemus', 'augustus.nicodemos@gmail.com');
insert into tbAutores(nome,email)values('Matt Haig', 'matt.haig@gmail.com');


insert into tbClientes(nome,telefone)values('Maria Gabrielly', '95355-525');
insert into tbClientes(nome,telefone)values('Joao Pedro', '94494-515');
insert into tbClientes(nome,telefone)values('Bartolo Tantan', '92333-333');


insert into tbLivros(titulo,preco,estoque,idGenero)values('É assim que começa',45.50,5,6);
insert into tbLivros(titulo,preco,estoque,idGenero)values('Biblioteca da meia-noite',31.90,2,4);
insert into tbLivros(titulo,preco,estoque,idGenero)values('Imperfeitos',21.90,8,3);
insert into tbLivros(titulo,preco,estoque,idGenero)values('Jantar Secreto',38.40,9,7);


insert into tbVendas(data,total,idCLiente)values('2024-05-16',150.32,2);
insert into tbVendas(data,total,idCLiente)values('2024-04-18',78.54,1);
insert into tbVendas(data,total,idCLiente)values('2024-05-11',121.95,3);


insert into tbItens_Vendas(idVenda,idLivro,quantidade,subtotal)values(2,4,65,155.87);
insert into tbItens_Vendas(idVenda,idLivro,quantidade,subtotal)values(3,1,15,198.76);
insert into tbItens_Vendas(idVenda,idLivro,quantidade,subtotal)values(1,2,52,1293.87);
insert into tbEscreve(idLivro,idAutor)values(2,1);
insert into tbEscreve(idLivro,idAutor)values(1,3);
insert into tbEscreve(idLivro,idAutor)values(4,5);		





-- Pesquisar os campos das tabelas (depois que eu inserir eu vejo)
select * from tbGeneros;
select * from tbAutores;
select * from tbClientes;
select * from tbLivros;
select * from tbVendas;
select * from tbItens_Vendas;
select * from tbEscreve;


