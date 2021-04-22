-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter 
-- o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
-- informações dos personagens desse game.

create database db_generation_game_online;
use db_generation_game_online;

-- siga  exatamente esse passo a passo:

-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos 
-- relevantes da classe para se trabalhar com o serviço desse game Online.
create table tb_classe (
id bigint(5) auto_increment,
velocidade int(4) not null,
estiloDeLuta varchar(30) not null,
nivelDeLuta bigint(5) not null,
primary key(id)
);

-- Popule esta tabela classe com até 5 dados.
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (1000, "Artes Marciais", 60);
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (800, "Street", 50);
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (600, "Místico", 70);
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (500, "Místico", 80);
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (700, "Street", 30);
insert into tb_classe (velocidade, estiloDeLuta, nivelDeLuta) values (900, "Artes Marciais", 40);

select * from tb_classe;

-- Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos funcionários para se trabalhar com o serviço desse game Online (não esqueça de criar 
-- a foreign key de tb_classe nesta tabela).
create table tb_personagem (
id bigint(5) auto_increment,
nome varchar(30) not null,
ataque int(4) not null,
defesa int(4) not null,
humano boolean,
nivelDeLuta_id bigint(5) not null,

primary key(id),
foreign key (nivelDeLuta_id) references tb_classe(id)
);

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Jin Kazama", 5000, 3000, true, 1);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Heihachi Mishima", 4000, 1800, true, 2);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Panda", 1800, 2000, false, 4);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Eddy Gordo", 6000, 3000, true, 1);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Jack", 1800, 2000, false, 5);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Christie Monteiro", 2500, 2500, true, 3);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Mokujin", 1500, 2000, false, 6);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("Akuma", 3000, 2000, true, 3);
insert into tb_personagem (nome, ataque, defesa, humano, nivelDeLuta_id) values ("King", 3000, 2000, true, 6);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa BETWEEN 1000 AND 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%C%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.nivelDeLuta_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os
-- personagens que são arqueiros).
select * from tb_personagem where tb_personagem.nivelDeLuta_id = 1;


-- fim 