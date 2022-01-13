create database db_escola;

use db_escola;
create table tb_estudantes (
	id bigint auto_increment, 
	nome varchar(50) not null,
    media1  decimal (10,2) not null,
	media2  decimal (10,2) not null,
    media3  decimal (10,2) not null,
	mediaGeral decimal (10,2) not null,
    
    primary key (id)
    ); 
    
	INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Cloves"  ,6 , 7 , 9 , 7.3);
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Edu" ,6.5 , 8.5 , 9.5 , 8.17); 
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("malu" ,6.5 , 8.5 , 10 , 8.3); 
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Maria" ,6.5 , 7.5 , 5.5 , 6.5);
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Yudi"  ,4 , 9 , 9 , 7.3);
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Carla"  ,6 , 6 , 8.5 , 6.8);
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Sara"  ,8 , 10 , 9 , 9.0);
    INSERT INTO tb_estudantes(nome,media1,media2,media3,mediaGeral) values ("Matheus"  ,6.5 , 10 , 9.5 , 8.6);
	
    
select nome, mediaGeral from tb_estudantes where mediaGeral > 7;
select nome, mediaGeral from tb_estudantes where mediaGeral < 7;

update tb_estudantes set media2 = 8.5 where id = 4;

Drop table tb_estudantes;
select * from tb_estudantes;
