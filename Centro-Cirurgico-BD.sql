create database centro_cirurgico_bd;

use centro_cirurgico_bd;

create table tbl_especialidade(
cod_especialidade int unsigned auto_increment primary key,
nome_especialidade varchar (100) not null
);

/*unsigned = não sinalizado, sendo assim ele pode ser tanto positivo quanto negativo, no modelo de dados ele garante que não irá ocorrer de dados
serem inseridos de forma negativa, ou certo ele assegura que apenas numeros positivos serão inseridos*/

create table tbl_paciente(
cod_paciente int unsigned auto_increment primary key,
nome_paciente varchar (500) not null,
telefone_paciente varchar (10),
celular_paciente varchar (11) not null,
email_paciente varchar (100) not null,
nome_responsavel varchar (500) not null,
telefone_responsavel varchar (11) not null
);

create table tbl_medico(
cod_medico int unsigned auto_increment primary key,
cod_especialidade int unsigned not null,
nome_medico varchar (500) not null,
telefone_medico varchar (10),
celular_medico varchar (11) not null,
email_medico varchar (100) not null
);

create table tbl_insumos(
cod_insumos int unsigned auto_increment primary key,
cod_paciente int unsigned not null,
nome_insumo varchar (100) not null,
qtd_insumo decimal (10,2)
);

create table tbl_sala(
cod_sala int unsigned auto_increment primary key,
cod_especialidade int unsigned not null,
nro_sala varchar (10) not null
);

create table tbl_agenda(
cod_agenda int unsigned auto_increment primary key,
cod_sala int unsigned not null,
cod_medico int unsigned not null,
cod_paciente int unsigned not null,
data_cirurgia varchar (10) not null,
status_cirurgia enum ('Agendado', 'Concluido', 'Cancelado')
);
