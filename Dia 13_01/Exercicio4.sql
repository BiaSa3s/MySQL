create database db_cidade_das_frutas;

use db_cidade_das_frutas;

 create table tb_categoria (
 id bigint auto_increment,
 descricao varchar(255) not null,
 ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Verduras",true);
insert into tb_categoria (descricao, ativo) values ("Legumes",true);
insert into tb_categoria (descricao, ativo) values ("Frutas",true);
insert into tb_categoria (descricao, ativo) values ("Laticinios",true);
insert into tb_categoria (descricao, ativo) values ("Fungis",true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Champignon",30.00,30, "2022-04-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cenoura",15.00,50, "2022-11-08", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Pimentão Vermelho",20.00,30, "2022-11-07", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Pessego",22.00,50, "2022-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Shimeji",60.00,25, "2022-05-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Alface",2.99,17, "2022-02-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Queijo coalho",25.00,20, "2022-11-09", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Manga",18.00,30, "2022-11-07", 3);

select * from tb_produtos;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produtos where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produtos where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA "C"
select * from tb_produtos where nome like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PRODUTOS
select * from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao , tb_categoria.ativo from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;


