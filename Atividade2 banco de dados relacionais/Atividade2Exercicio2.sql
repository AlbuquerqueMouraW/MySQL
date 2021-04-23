-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o 
-- seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa.
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes 
-- do tb_categoria para se trabalhar com o serviço dessa pizzaria.
create table tb_categoria(  
id bigint(5) auto_increment,
tipo varchar(30),
tamanho varchar(30),
bordaRecheada boolean,
primary key(id)
);

-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("vegana", "Pequena", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("vegana", "Grande", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("vegana", "Pequena", false);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("vegana", "Grande", false);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Salgada", "Pequena", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Salgada", "Grande", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Salgada", "Pequena", false);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Salgada", "Grande", false);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Doce", "Pequena", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Doce", "Grande", true);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Doce", "Pequena", false);
insert into tb_categoria (tipo, tamanho, bordaRecheada) values ("Doce", "Grande", false);

select * from tb_categoria;

-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar 
-- a foreign key de tb_categoria nesta tabela).
create table tb_pizza(
id bigint(5) auto_increment,
nome varchar(20) not null,
descricao varchar(50) not null,
adicional varchar(20),
preco decimal(10,2) not null,
categoria_id bigint(5) not null,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule esta tabela pizza com até 8 dados.
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Mussarela", "Extrato de tomate, mussarela, oregano","Não", 35.00, 8);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Mussarela", "Extrato de tomate, mussarela, oregano","Sim", 52.00, 6);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Calabresa", "Extrato de tomate, calabresa, cebola","Não", 35.00, 8);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Vegana 1", "Extrato de tomate, Tofu","Não", 47.00, 2);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Vegana 1", "Extrato de tomate, Tofu","Não", 28.00, 1);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Vegana 2", "Extrato de tomate, Rucula com tomate seco","Não", 47.00, 2);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Vegana 3", "Extrato de tomate, abobrinha, tomate e cerejas","Não", 40.00, 2);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Pepperoni", "Extrato de tomate, pepperoni","Sim", 34.00, 5);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Chocolate", "Chocolate","Não", 28.00, 9);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Chocolate", "Chocolate","Não", 41.00, 10);
insert into tb_pizza (nome, descricao, adicional, preco, categoria_id) values ("Brocolis", "Extrato de tomate, mussarela, brocolis e bacon","Não", 35.00, 8);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco BETWEEN 29 AND 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where nome like "%C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_pizza where tb_pizza.categoria_id  = 8;

-- fim



