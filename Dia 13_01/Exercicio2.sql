create database db_pizzaria_legal;
 
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
	nome varchar(100) not null,
    endereco varchar(100) not null,
    primary key (id)
);

INSERT INTO tb_categoria (nome, endereco) VALUES ("Pizzaria do Vidinha", "Rua: Manoel Coelho");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Pizzaria lions", "Rua: Singapura");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Pizzaria 3 Marias", "Rua: Padre Arlindo");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Pizzaria do seu Zé", "Rua: Av. Tiête");
INSERT INTO tb_categoria (nome, endereco) VALUES ("Pizzaria Rap10", "Rua: São José");

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(150) not null,
    quantidade int not null,
    preco decimal(5,2),
    bebida varchar(100),
    categoria_id bigint,
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("3 Queijos" , 2 , 60.00 , "Coca-Cola", 1);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Portuguesa" , 1 , 30.00 , "Fanta Uva", 3);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Marguerita" , 3 , 95.00 , "Sprit", 4);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Chefe" , 2 , 70.00 , "Coca-Cola", 2);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Frango" , 1 , 28.00 , "Dolly" , 5);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Escarola" , 4 , 85.00 , "Schweppes", 1);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Moda da Casa" , 3 , 95.00 , "Fanta Laranja", 2);
INSERT INTO tb_pizza (sabor, quantidade, preco, bebida, categoria_id) VALUES ("Toscana" , 1 , 30.00 , "Pespi" ,4);

select * from tb_pizza;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 45.00
select * from tb_pizza where preco > 45;

-- SELECT PRODUTOS COM VALOR ENTRE 29 E 60 REAIS
select * from tb_pizza where preco between 29 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA "C"
select * from tb_pizza where sabor like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PIZZA
select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_pizza.sabor, tb_pizza.quantidade, tb_pizza.preco, tb_categoria.nome, tb_categoria.endereco from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;





