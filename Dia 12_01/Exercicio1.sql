create database db_rh;

use db_rh;
create table tb_funcionarios (
	id bigint auto_increment, 
    nome varchar(100) not null,
    funcao varchar(100) not null,
    salario decimal (10,2) not null,
    metas int, 
    dependentes int,
    primary key (id)
    ); 
    
INSERT INTO tb_funcionarios(nome, funcao, salario, metas, dependentes) values ("Beatriz" , "Gerente" , 60000.00 , 50 , 3);
INSERT INTO tb_funcionarios(nome, funcao, salario, metas, dependentes) values ("Je" , "Supervisora" , 5000.00 , 60 , 4);
INSERT INTO tb_funcionarios(nome, funcao, salario, metas, dependentes) values ("João" , "Estagiario" , 1100.00 , 80 , 2);
INSERT INTO tb_funcionarios(nome, funcao, salario, metas, dependentes) values ("Maria" , "Dev Jr" , 2000.00 , 70 , 5);
INSERT INTO tb_funcionarios(nome, funcao, salario, metas, dependentes) values ("Lucas" , "Dev Senior" , 4000.00 , 90 , 3);

select nome, salario from tb_funcionarios where salario > 2000.00;
select nome, salario from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set dependentes = 5 where id = 1;
