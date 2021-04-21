-- Atividade 1

-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa.
create database db_empresaRH;
use db_empresaRH;

-- Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(100) not null,
admissao date,
salario decimal(5,2) not null,
ativo boolean,
primary key(id)
);

-- Popule esta tabela com até 5 dados;
insert into tb_funcionarios(nome, admissao, salario, ativo) values ("Abdias Nascimento", '2020-10-10', 1500.00, true);
insert into tb_funcionarios(nome, admissao, salario, ativo) values ("Carolina Maria de Jesus", '2020-08-04', 1700.00, true);
insert into tb_funcionarios(nome, admissao, salario, ativo) values ("Ruth de Souza", '2020-12-03', 3200.00, true);
insert into tb_funcionarios(nome, admissao, salario, ativo) values ("Luis Gama", '2021-01-10', 3000.00, true);
insert into tb_funcionarios(nome, admissao, salario, ativo) values ("Lélia Gonzalez", '2021-02-16', 4500.00, true);

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select * from tb_funcionarios where salario > 2000;

-- Faça um select que retorne os funcionários com o salário menor do que 2000.
select * from tb_funcionarios where salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set admissao = '2021-02-04' where id = 5;
