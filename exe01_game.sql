create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes(
id_classe INT primary key,
poder VARCHAR(255) NOT NULL,
dano bigint 
);

create table tb_personagens(
id BIGINT AUTO_INCREMENT primary key,
nome VARCHAR(255) NOT NULL,
ataque bigint,
defesa bigint,
nível bigint,
classe_id int,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id_classe)
);




insert into tb_classes(id_classe, poder, dano) 
VALUES (1,  "Super forca", 2500),
(2,  "Invisibilidade", 500),
(3,  "Espadachim", 1500),
(4,  "Inteligência", 1000),
(5,  "Cura", 1200);

insert into tb_personagens(id, nome, ataque, defesa, nível, classe_id) 
VALUES(1, 'Aghata', 2500, 2000, 7, 1),
(2, 'Blok', 500, 1000, 4 , 2),
(3, 'Dyl', 1500, 2000, 7, 3),
(4, 'Claude', 1000, 400, 3, 4),
(5, 'Bianca', 1200, 1200, 6, 5),
(6, 'Venus', 4320, 3000, 10, 5),
(7, 'Don', 3200, 2400, 8, 3),
(8, 'Rex', 2000, 1500, 6, 1);

select * from tb_personagens where ataque >2000;

select *from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select id, nome, ataque, defesa, nível, classe_id FROM tb_personagens INNER JOIN tb_classes on tb_personagens.classe_id = tb_classes.id_classe;


select id, nome, ataque, defesa, nível, classe_id FROM tb_personagens INNER JOIN tb_classes on tb_personagens.classe_id = tb_classes.id_classe where classe_id = 1;






