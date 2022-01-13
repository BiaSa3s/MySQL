create database db_ecommerce;

use db_ecommerce;
create table tb_produtos (
	id bigint auto_increment, 
	modelo varchar(150) not null,
    cameraFrontal varchar(150) not null,
	peso varchar(150) not null,
    capacidade varchar(150) not null,
    valor decimal (10,2) not null,
   
    primary key (id)
    ); 
    
    INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone 13 Pro Max" , "12 MP" , "238 gramas" , "Até 512 GB" , 5300.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone 13 Pro" ,"12 MP" ,  "203 gramas" , "Até 512 GB" , 4800.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone 12 Pro" ,  "12 MP" , "189 gramas" , "Até 512 GB" ,4200.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone 11 Pro" ,  "12 MP" , "188 gramas" , "Até 512 GB" , 3900.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone XS" , "7 MP" , "177 gramas" , "Até 512 GB" , 3600.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone X" , "7 MP" , "174 gramas" , "Até 512 GB" , 3000.00  );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone SE 1ª" , "1,2 MP" ,  "113 gramas" , "Até 128 GB" , 1300.00 );
	INSERT INTO tb_produtos(modelo,cameraFrontal,peso,capacidade,valor) values ("Iphone 6" , "1,2 MP" , "129 gramas" , "Até 64 GB" , 460.00 );
    
select modelo, valor from tb_produtos where valor > 500.00;
select modelo, valor from tb_produtos where valor < 500.00;

update tb_produtos set valor = 1500.00 where id = 7;

Drop table tb_produtos;
select * from tb_produtos;

