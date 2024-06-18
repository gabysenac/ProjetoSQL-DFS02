drop database dbConsultorio;

create database dbConsultorio;

use dbConsultorio;

create table tbMedico(
idMedico int not null auto_increment,
nome varchar(100),
telefone char(10),
primary key(idMedico)
);


create table tbPaciente(
idPaciente int not null auto_increment,
nome varchar(100),
telefone char(10) unique,
convenio varchar(100),
primary key(idPaciente)
);


create table tbReceitaMedica(
idReceitaMedica int not null auto_increment,
descricao varchar(100),
primary key (idReceitaMedica)
);


create table tbConsulta(
idConsulta int not null auto_increment,
data datetime,
idMedico int not null,
idPaciente int not null,
idReceitaMedica int not null,
primary key(idConsulta),
foreign key(idMedico) references tbMedico(idMedico),
foreign key(idPaciente) references tbPaciente(idPaciente),
foreign key(idReceitaMedica) references tbReceitaMedica(idReceitaMedica)
);


desc tbMedico;
desc tbPaciente;
desc tbReceitaMedica;
desc tbConsulta;



-- inserindo registros
insert into tbMedico(nome, telefone)
	values('Joao Pedro', '95555-5555');
insert into tbMedico(nome, telefone)
	values('Mariana Regina', '95522-1535');
insert into tbMedico(nome, telefone)
	values('Antonio da Silva', '95445-5565');


insert into tbPaciente(nome,telefone,convenio)
	values('Regina Marques Sampaio', '98852-9655', 'Porto Saude');
insert into tbPaciente(nome,telefone,convenio)
	values('Luana da Silva Marques', '9212-9695', 'Unimed');
insert into tbPaciente(nome,telefone,convenio)
	values('Carolina Sampaio', '92221-1665', 'Amil');
insert into tbPaciente(nome,telefone,convenio)
	values('Cesar Filho', '98366-9955', 'Porto Saude');
insert into tbPaciente(nome,telefone,convenio)
	values('Jose da Cruz Silva', '91212-1155', 'Unimed');


insert into tbReceitaMedica(descricao)
	values('Fazer exercicio fisico diarimente');
insert into tbReceitaMedica(descricao)
	values('Tomar suco');
insert into tbReceitaMedica(descricao)
	values('Fazer caminhada pela manha');
insert into tbReceitaMedica(descricao)
	values('Caminhada no parque');
insert into tbReceitaMedica(descricao)
	values('Tomar remedio na hora');


insert into tbConsulta(data,idMedico,idPaciente,idReceitaMedica)
	values('2024/06/18', 2,5,3);

insert into tbConsulta(data,idMedico,idPaciente,idReceitaMedica)
	values('2024/06/16', 1,4,2);

insert into tbConsulta(data,idMedico,idPaciente,idReceitaMedica)
	values('2024/06/07', 3,3,1);

insert into tbConsulta(data,idMedico,idPaciente,idReceitaMedica)
	values('2024/06/02', 1,2,4);

insert into tbConsulta(data,idMedico,idPaciente,idReceitaMedica)
	values('2024/06/05', 2,1,5);


-- pesquisando registros
select * from tbMedico;
select * from tbPaciente;
select * from tbReceitaMedica;
select * from tbConsulta;


-- inner join
select med.nome as 'Medico',
pac.nome as 'Paciente',
rec.descricao as 'Receita' from tbConsulta as con 
inner join tbMedico as med 
on con.idMedico = med.idMedico 
inner join tbPaciente as pac
on con.idPaciente = pac.idPaciente
inner join tbReceitaMedica as rec 
on con.idReceitaMedica = rec.idReceitaMedica
where med.nome like '%n%';





select pac.nome as 'Nome do Paciente',
med.nome as 'Nome do Medico'
from tbMedico as med 
right join tbPaciente as pac  
on med.idMedico = pac.idPaciente;