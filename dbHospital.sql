drop database dbHospital;

create database dbHospital;
	
use dbHospital;


create table tbMedico(
codMed int not null auto_increment,
nmMedico varchar(45),
teleMedico varchar(9),
primary key(codMed)
); 


create table tbPaciente(
codPac int not null auto_increment,
nomePaciente varchar(45),
telePaciente varchar(9),
convenio varchar(45),
primary key(codPac)
);
 
create table tbReceita(
codReceita int not null auto_increment,
descricao varchar(500),
primary key (codReceita)
);

create table tbConsulta(
codCons int not null auto_increment,
consulta datetime,
medico int not null,
paciente int not null,
receita int not null,
primary key(codCons),
foreign key(paciente)references tbPaciente(codPac),
foreign key(medico)references tbMedico(codMed),
foreign key(receita) references tbReceita(codReceita)
);


-- visualizando as tabelas criadas
show tables;
desc tbConsulta;
desc tbMedico;
desc tbPaciente;
desc tbReceita;

