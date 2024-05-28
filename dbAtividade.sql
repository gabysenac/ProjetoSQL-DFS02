drop database dbAtividade;

create database dbAtividade;
use dbAtividade;

create table tbFuncionarios(
idFunc int not null auto_increment,
nome varchar(50),
email varchar(50),
telefone char(9),
endereco varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(50),
estado char(2),
primary key (idFunc)
);


insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Gabrielly','gabrielly@gmail.com','9999-9999','Rua da Alegria',35,'98909-000','Bairro Paulista','Sao Paulo','SP');

insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Joao','joao.p@gmail.com','8888-8888','Rua das Vantagens',50,'58213-000','Vila Mariana','Sao Paulo','SP');

insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Bartolo','bartolo.tan@gmail.com','7777-7777','Rua Borba Gato',65,'34450-000','Santo Amaro','Sao Paulo','SP');

insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Davi','Davi.@gmail.com','7257-7122','Rua Nova',10,'02150-000','Santa Lucia','Sao Paulo','SP');

insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Manuela','manuela@gmail.com','2222-2222','Rua das Belezas',55,'84250-000','Santo Amaro','Sao Paulo','SP');

insert into tbFuncionarios(nome,email,telefone,endereco,numero,cep,bairro,cidade,estado)
	values('Jose','jose@gmail.com','2333-2112','Rua Interlagos',55,'15904-000','Morumbi','Sao Paulo','SP');

select * from tbFuncionarios;



update tbFuncionarios set telefone = '5555-5555' where idFunc = 1;
update tbFuncionarios set endereco = 'Rua das Amoras' where idFunc = 2;
update tbFuncionarios set cep = '20120-000' where idFunc = 3;

select * from tbFuncionarios;


select idFunc,nome, '222.222.222-22' as 'cpf' ,email,telefone,endereco,numero,cep,bairro,cidade,estado from tbFuncionarios;

select idFunc as 'Código',
nome as 'Nome',
email as 'Email',
telefone as 'Telefone',
endereco as 'Endereço',
numero as 'Número',
cep as 'Cep',
bairro as 'Bairro',
cidade as 'Cidade',
estado as 'Estado' from tbFuncionarios;

select numero * 0.10 as 'Numero' from tbFuncionarios;

delete from tbFuncionarios where idFunc = 6;
	select * from tbFuncionarios;










