-- Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o 
-- seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do 
-- tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(30) not null,
duracaoH decimal (10,2) not null,
qntModulos int not null,
primary key(id)
);

-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("Presencial", 80.00, 6);
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("Presencial", 50.00, 4);
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("EAD", 80.00, 6);
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("EAD", 50.00, 4);
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("Hibrido", 100.00, 6);
insert into tb_categoria (tipo, duracaoH, qntModulos) values ("Hibrido", 100.00, 4);

select* from tb_categoria;

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
-- tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de 
-- tb_categoria nesta tabela).
create table tb_produto(
id bigint(5) auto_increment,
nomeDoCurso varchar(30) not null,
descricaoDoCurso varchar(80) not null,
certificado boolean,
valorDoCurso decimal(10,2) not null,
categoria_id bigint(5),
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule esta tabela Produto com até 8 dados.
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Fotografia", "Curso introdução a Fotografia EAD..", true, 50.00, 4);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Eventos", "Curso de Eventos Hibrido..", true, 120.00, 5);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Fotografia", "Curso de Fotografia Hibrido..", true, 120.00, 5);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Gastronomia", "Curso de Gastronomia Presencial", true, 150.00, 1);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Gastronomia", "Curso introdução a Gastronomia EAD", true, 50.00, 4);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Linguagem programação-JAVA", "Curso de introdução a Linguagem de Programação - JAVA, EAD", true, 100.00, 4);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Idiomas", "Curso de Idioma(Francês) presencial", true, 200.00, 1);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("informatica e Internet", "Curso introdução de Informatica e internet, EAD", true, 40.00, 4);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Idiomas", "Curso de Idioma(Inglês) EAD", true, 100.00, 4);
insert into tb_produto (nomeDoCurso, descricaoDoCurso, certificado, valorDoCurso, categoria_id) values ("Musica", "Curso de música(Bateria) presencial", true, 150.00, 1);


select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valorDoCurso > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valorDoCurso BETWEEN 3 AND 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produto where nomeDoCurso like "%J%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da 
-- categoria Java).
select * from tb_produto where tb_produto.categoria_id  = 1;

-- fim.