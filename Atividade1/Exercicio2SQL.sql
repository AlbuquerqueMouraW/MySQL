-- Atividade2

-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
create database db_ecommerce;
use db_ecommerce;

-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
create table tb_produtos(
id bigint(5),
marca varchar(20) not null,
categoria varchar(20) not null,
descricao varchar(50) not null,
preco decimal(4,2) not null,
primary key(id)
);

-- Popule esta tabela com até 8 dados
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Feminino", "Calça Legging", 400.00);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Feminino", "Blazer Xadrez", 619.00);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Feminino", "Vestido de Veludo", 459.00);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Masculino", "Poncho Estampado", 260.00);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Masculino", "Jaqueta Reversível", 615.90);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Masculino", "Calça Worker", 210.59);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Infantil", "Tênis", 110.00);
insert into tb_produtos1(marca, categoria, descricao, preco) values ("Zara", "Infantil", "Camisa", 60.00);


-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos1 where preco > 500 ;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos1 where preco < 500 ;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos1 set preco = 50.00 where id = 8 ;

