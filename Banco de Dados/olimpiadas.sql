Create table pais(
	id serial primary key,
	nome varchar(50) not null
);
create table categoria(
	id serial primary key,
	nome varchar(50) not null,
	sexo char not null	
);
create table modalidade(
	id serial primary key,
	nome varchar(50) not null,
	id_categoria int not null,
	foreign key (id_categoria) references categoria(id)
);
create table premiacao(
	id serial primary key,
	id_modalidade int not null,
	id_pais int not null,
	ouro int,
	prata int,
	bronze int,
	foreign key (id_modalidade) references modalidade(id),
	foreign key (id_pais) references pais(id)
);

insert into pais (nome) values ('Brasil');
insert into pais (nome) values ('EUA');
insert into pais (nome) values ('Japão');
insert into pais (nome) values ('França');
insert into pais (nome) values ('Itália');
insert into pais (nome) values ('Espanha');
insert into pais (nome) values ('Inglaterra');
insert into pais (nome) values ('Portugal');
insert into pais (nome) values ('Austrália');
insert into pais (nome) values ('Jamaica');
insert into pais (nome) values ('Alemanha');
insert into pais (nome) values ('Argentina');
insert into pais (nome) values ('China');
insert into pais (nome) values ('Noruega');
insert into pais (nome) values ('Holanda');

insert into categoria (nome, sexo) values ('UNICO', 'M');
insert into categoria (nome, sexo) values ('UNICO', 'F');
insert into categoria (nome, sexo) values ('60KG', 'M');
insert into categoria (nome, sexo) values ('60KG', 'F');
insert into categoria (nome, sexo) values ('80KG', 'M');
insert into categoria (nome, sexo) values ('80KG', 'F');
insert into categoria (nome, sexo) values ('100KG', 'M');
insert into categoria (nome, sexo) values ('100KG', 'F');
insert into categoria (nome, sexo) values ('ESTILO LIVRE', 'M');
insert into categoria (nome, sexo) values ('ESTILO LIVRE', 'F');
insert into categoria (nome, sexo) values ('BORBOLETA', 'M');
insert into categoria (nome, sexo) values ('BORBOLETA', 'F');
insert into categoria (nome, sexo) values ('PEITO', 'M');
insert into categoria (nome, sexo) values ('PEITO', 'F');
insert into categoria (nome, sexo) values ('DUPLA', 'M');
insert into categoria (nome, sexo) values ('DUPLA', 'F');

insert into modalidade (nome, id_categoria) values ('VOLEI', 1);
insert into modalidade (nome, id_categoria) values ('VOLEI', 2);
insert into modalidade (nome, id_categoria) values ('BASQUETE', 1);
insert into modalidade (nome, id_categoria) values ('BASQUETE', 2);
insert into modalidade (nome, id_categoria) values ('VOLEI DE PRAIA', 1);
insert into modalidade (nome, id_categoria) values ('VOLEI DE PRAIA', 2);
insert into modalidade (nome, id_categoria) values ('HANDEBOL', 1);
insert into modalidade (nome, id_categoria) values ('HANDEBOL', 2);
insert into modalidade (nome, id_categoria) values ('JUDO', 3);
insert into modalidade (nome, id_categoria) values ('JUDO', 4);
insert into modalidade (nome, id_categoria) values ('JUDO', 5);
insert into modalidade (nome, id_categoria) values ('JUDO', 6);
insert into modalidade (nome, id_categoria) values ('JUDO', 7);
insert into modalidade (nome, id_categoria) values ('JUDO', 8);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 9);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 10);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 11);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 12);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 13);
insert into modalidade (nome, id_categoria) values ('NATAÇÃO', 14);
insert into modalidade (nome, id_categoria) values ('TÊNIS', 15);
insert into modalidade (nome, id_categoria) values ('TÊNIS', 16);
insert into modalidade (nome, id_categoria) values ('TÊNIS DE MESA', 15);
insert into modalidade (nome, id_categoria) values ('TÊNIS DE MESA', 16);
insert into modalidade (nome, id_categoria) values ('TÊNIS', 1);
insert into modalidade (nome, id_categoria) values ('TÊNIS', 2);
insert into modalidade (nome, id_categoria) values ('TÊNIS DE MESA', 1);
insert into modalidade (nome, id_categoria) values ('TÊNIS DE MESA', 2);
insert into modalidade (nome, id_categoria) values ('100M RASOS', 1);
insert into modalidade (nome, id_categoria) values ('100M RASOS', 2);
insert into modalidade (nome, id_categoria) values ('400M RASOS', 1);
insert into modalidade (nome, id_categoria) values ('400M RASOS', 2);
insert into modalidade (nome, id_categoria) values ('SALTO EM DISTÂNCIA', 1);
insert into modalidade (nome, id_categoria) values ('SALTO EM DISTÂNCIA', 2);
insert into modalidade (nome, id_categoria) values ('ARCO E FLECHA', 1);
insert into modalidade (nome, id_categoria) values ('ARCO E FLECHA', 2);