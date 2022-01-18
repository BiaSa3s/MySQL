create database db_construindo_a_nossa_vida; 

use db_construindo_a_nossa_vida; 

create table tb_categoria(
	id bigint auto_increment,
	nome varchar(50) not null,
    endereco varchar(50) not null,
    primary key (id)
);

INSERT INTO tb_categoria (nome, endereco) VALUES ("C&C", "Rua: Abagiba");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Telha Norte", "Rua: Dom Pedro");
INSERT INTO tb_categoria (nome, endereco) VALUES ("LeroyMerlin", "Rua: Bezerra de Menezes");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Sodimac", "Rua: Padre Arlindo");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Minha casa minha vida", "Rua: Sacadura");

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
anoModelo int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Martelo",30.00, 50 , 2022, 5);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Rastelo",50.00, 10 , 2021, 1);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Escada",150.00, 25 , 2020, 3);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Chapa Drywall",200.00, 100 , 2019, 2);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("forro PVC",24.99, 50 , 2021, 4);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Vap",280.00, 15 , "2022", 1);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Furadeira",180.00, 30 , "2020", 5);
insert into tb_produto (produto, preco, qtProduto, anoModelo, categoria_id) values ("Parafusadeira",280.00, 12 , "2018", 2);

select * from tb_produto;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produto where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produto where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA "C"
select * from tb_produto where produto like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PRODUTO
select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_produto.produto, tb_produto.preco, tb_produto.qtProduto, tb_categoria.nome , tb_categoria.endereco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 4;



