-- Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome 
-- db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes 
-- do tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes 
-- dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de 
-- tb_categoria nesta tabela).
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule esta tabela Produto com até 8 dados.
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,5);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30,3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);

select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco BETWEEN 3 AND 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome like "%C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_produtos where tb_produtos.categoria_id  = 3;

-- fim
