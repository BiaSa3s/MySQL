create database db_cursoDaMinhaVida;

use  db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
	curso varchar(50) not null,
    vagas int not null,
    primary key (id)
);

INSERT INTO tb_categoria (curso, vagas) VALUES ("TI", 40);
INSERT INTO tb_categoria (curso, vagas) VALUES ("Administração", 30);
INSERT INTO tb_categoria (curso, vagas) VALUES ("Direito", 60);
INSERT INTO tb_categoria (curso, vagas) VALUES ("Segurança do trabalho", 25);
INSERT INTO tb_categoria (curso, vagas) VALUES ("Logística", 52);

create table tb_curso (
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
dataInicio date,
precoMensal decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Ester" , "Presencial" , "2022-05-23" , 58.00, 2);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Bruno" , "EAD" , "2022-04-12" , 78.00 , 3);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Celia" , "EAD" , "2022-07-25" , 45.00 , 1);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("João" , "Presencial" , "2022-09-01" , 100.00, 4);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Marilia" , "Presencial" , "2022-03-05" , 86.00, 5);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Cesar" , "EAD" , "2022-06-23" , 95.00, 2);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("André" , "Presencial" , "2022-10-20" , 45.00, 1);
insert into tb_curso (nome, tipo, dataInicio, precoMensal, categoria_id) values ("Marcela" , "EAD" , "2022-09-17" , 38.00, 3);

select * from tb_curso;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_curso where precoMensal > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_curso where precoMensal between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA "J"
select * from tb_curso where nome like "%J%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PRODUTO
select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_curso.nome,tb_curso.tipo, tb_curso.precoMensal, tb_categoria.curso , tb_categoria.vagas from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 5;



