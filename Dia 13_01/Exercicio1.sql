create database db_GameGen_online; 

use db_GameGen_online; 

create table tb_classe(
	id bigint auto_increment,
    Jogo varchar(50) not null,
    Genero varchar(50) not null,
    primary key (id)
);

INSERT INTO tb_classe (Jogo, Genero) VALUES ("SUPER MARIO WORLD", "ACAO");
INSERT INTO tb_classe (Jogo, Genero) VALUES ("SimCity", "CONSTRUCAO");
INSERT INTO tb_classe (Jogo, Genero) VALUES (" XADREZ", "ESTRATÉGIA");
INSERT INTO tb_classe (Jogo, Genero) VALUES ("Sonic", "AVENTURA");
INSERT INTO tb_classe (Jogo, Genero) VALUES ("Five Nights At Freddy's ", "TERROR");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    habilidade varchar(30) not null,
    poderAtq int not null,
    poderDef int not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Knuckles the Echidna", " Escalar paredes", 500 , 2000 , 4);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Luigi", " Bolas de fogo", 1500, 800, 1);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Blaze the Cat", " Agilidade", 3200, 1000, 4);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Yoshi", " comer conchas Koopa", 3000, 3500, 1);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Cavalo", "Anda pra frente e para trás", 1800, 400, 3);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Tom", "Apagar fogo", 2100, 500, 2);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Dama", "Vitória", 9000, 8000, 3);
INSERT INTO tb_personagem (nome, habilidade, poderAtq, poderDef, classe_id) VALUES ("Amy Rose", "Se tornar invisível", 200, 3500, 4);

select * from tb_personagem;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE ATAQUE MAIOR QUE 2000
select * from tb_personagem where poderAtq > 2000;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE DEFESA ENTRE 1000 E 2000
select * from tb_personagem where poderDef between 1000 and 2000;

-- FAÇA UM SELECT UTLIZANDO LIKE BUSCANDO OS PERSONAGENS COM A LETRA C -- 
select * from tb_personagem where nome like "%c%";

-- FAÇA UM INNER JOIN ENTRE A TABELA CLASSE E PERSONAGEM
select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poderAtq, tb_personagem.poderDef, tb_classe.Jogo, tb_classe.Genero from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PERSONAGENS DE UMA CLASSE ESPECÍFICA
select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poderAtq, tb_personagem.poderDef, tb_classe.Jogo, tb_classe.Genero from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;

