create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id int primary key,
descricao VARCHAR(255) NOT NULL,
massa VARCHAR(255) NOT NULL
);

create table tb_pizzas(
id int AUTO_INCREMENT primary key,
nome VARCHAR(255) NOT NULL,
preco decimal (4,2) not null,
ingredientes VARCHAR(255) NOT NULL,
cebola boolean,
borda_recheada boolean,
categoria_id int,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

alter table tb_pizzas change cebola tem_cebola boolean;

insert into tb_categorias(id, descricao, massa) 
VALUES (1, 'Pizza doce', 'fina'),
(2, 'Pizza salgada', 'grossa'),
(3, 'Pizza vegetariana', 'média'),
(4, 'Pizza sem lactose', 'sem lactose'),
(5, 'Pizza sem glúten', 'sem glúten');

insert into tb_pizzas(id, nome, preco, ingredientes, tem_cebola, borda_recheada)
values(1, 'Calabresa', 41.99, 'Calabresa e cebola - massa sem lactose', true, false),
(2, 'Marguerita', 41.99, 'Queijo mussarela', false, false),
(3, 'Frango com catupiry', 58.99, 'Frango temperado e catupiry', true, true),
(4, 'Tomate seco', 63.99, 'Tomate seco, frango desfiado e rúcula - masssa sem glúten', false, false),
(5, 'Moranguete', 52.99, 'Morango e chocolate', false, false),
(6, 'Dois amores', 57.99, 'Chocolate preto e chocolate branco', false, false),
(7, 'Quatro queijos', 64.99, 'Queijo mussarela, queijo provolone, queijo parmesão e catupiry', false, true),
(8, 'Vegetariana', 72.99, 'Cogumelo, pimentões, espinafre e cebola', true, false);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where nome like "%m%";

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_categorias set id = 1 where descricao = 'Pizza doce';
UPDATE tb_categorias set id = 2 where descricao = 'Pizza salgada';
UPDATE tb_categorias set id = 3 where descricao = 'Pizza vegetariana';
UPDATE tb_categorias set id = 4 where descricao = 'Pizza sem lactose';
UPDATE tb_categorias set id = 5 where descricao = 'Pizza sem glúten';

UPDATE tb_pizzas set categoria_id = 4 where nome = 'Calabresa';
UPDATE tb_pizzas set categoria_id = 2 where nome = 'Marguerita';
UPDATE tb_pizzas set categoria_id = 2 where nome = 'Frango com catupiry';
UPDATE tb_pizzas set categoria_id = 5 where nome = 'Tomate seco';
UPDATE tb_pizzas set categoria_id = 1 where nome = 'Moranguete';
UPDATE tb_pizzas set categoria_id = 1 where nome = 'Dois amores';
UPDATE tb_pizzas set categoria_id = 2 where nome = 'Quatro queijos';
UPDATE tb_pizzas set categoria_id = 3 where nome = 'Vegetariana';

SET SQL_SAFE_UPDATES = 1;

select nome, preco, ingredientes, tem_cebola, borda_recheada  from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;

select nome, preco, ingredientes, tem_cebola, borda_recheada  from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where tb_categorias.id =1;