create database db_Farmacia_Do_Bem;

Use db_Farmacia_do_bem;

create table tb_categorias(
id bigint not null auto_increment,
descricao varchar(250) not null,
ativo boolean,
primary key (id)
);

insert into tb_categorias (descricao, ativo) values ("analgésicos", true);
insert into tb_categorias (descricao, ativo) values ("suplemento alimentar", 1);
insert into tb_categorias (descricao, ativo) values ("higiene pessoal", true);
insert into tb_categorias (descricao, ativo) values ("cosméticos", 1);
insert into tb_categorias (descricao, ativo) values ("medicamentos manípulados", true);

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
datacadastro timestamp not null,
quantidade int,
preco decimal(5,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Dorflex", current_date(), 200, 15.50 , 1);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Glutamina", current_date(), 60, 40.90, 2);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("lenço umedecido", current_date(), 150, 35.40, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Base Boca Rosa", current_date(), 80, 59.90, 4);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Rivotril", current_date(), 250, 68.50, 5);

insert into tb_produtos(nome, datacadastro, quantidade, preco) 
values("Laxante", current_date(), 35, 2.99);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Anti transpirant", current_date(), 100, 14.30, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Ibuprofeno", current_date(), 200, 21.00, 1);


select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.id = 2;






