-- Atividade3

-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola.
create database db_escola;
use db_escola;

-- Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.

create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(80) not null,
serie varchar(50) not null, 
sala bigint(4) not null,
nota decimal(2,1) not null,
);

-- Popule esta tabela com até 8 dados
insert into tb_alunos(nome, serie, sala, nota) values ("Tereza de Benguela", "5ªSérie", 105, 8.5);
insert into tb_alunos(nome, serie, sala, nota) values ("Zumbi dos Palmares", "5ªSérie", 105, 5.0);
insert into tb_alunos(nome, serie, sala, nota) values ("Luisa Mahin", "5ªSérie", 105, 6.5);
insert into tb_alunos(nome, serie, sala, nota) values ("Lima Barreto", "5ªSérie", 105, 7.5);
insert into tb_alunos(nome, serie, sala, nota) values ("Machado de Assis", "5ªSérie", 102, 10.0);
insert into tb_alunos(nome, serie, sala, nota) values ("José do Patrocinio", "5ªSérie", 102, 5.5);
insert into tb_alunos(nome, serie, sala, nota) values ("Antonieta de Barros", "5ªSérie", 102, 8.0);
insert into tb_alunos(nome, serie, sala, nota) values ("Cartola", "5ªSérie", 102, 4.0);

-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.
select * from tb_alunos where nota > 7;

-- Faça um select que retorne o/as alunos/a com a nota menor do que 7.
select * from tb_alunos where nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_alunos set nota = 5.0 where id = 8;
