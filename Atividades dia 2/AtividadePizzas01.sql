CREATE DATABASE db_pizzaria_legal;

DROP DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
			id BIGINT AUTO_INCREMENT PRIMARY KEY,
            categoria VARCHAR(255),
            borda VARCHAR(255)
);

CREATE TABLE tb_pizzas(
			id BIGINT AUTO_INCREMENT,
            sabor VARCHAR(255) NOT NULL,
            preco DECIMAL (5,2) NOT NULL,
            tamanho VARCHAR (255) NOT NULL,
            disponibilidade_ingredientes  VARCHAR(255),
            categoriaid BIGINT,
            PRIMARY KEY(id),
            FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id),
            bordaid BIGINT,
            FOREIGN KEY (bordaid) REFERENCES tb_categorias(id)
);

DROP TABLE tb_pizzas;

INSERT INTO tb_categorias (categoria)
VALUES ("Doce");

INSERT INTO tb_categorias (categoria)
VALUES ("Salgada");

INSERT INTO tb_categorias (categoria)
VALUES ("Vegana");

INSERT INTO tb_categorias (borda)
VALUES ("Com borda");

INSERT INTO tb_categorias (borda)
VALUES ("Sem borda");

--

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Muçarela",101.99,"GG","Ingredientes Diponíveis",2,4);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Muçarela",21.99,"P","Ingredientes Diponíveis",2,5);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Mista",36.99,"G","Ingrediente Indisponíveis",2,4);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Presunto",28.99,"G","Ingredientes Diponíveis",2,4);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Presunto",17.99,"P","Ingredientes Diponíveis",2,5);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Atum vegano",12.99,"PP","Ingredientes Indisponíveis",3,5);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Chocolate",30.99,"M","Ingredientes Indisponíveis",1,5);

INSERT INTO tb_pizzas (sabor, preco, tamanho, disponibilidade_ingredientes, categoriaid, bordaid)
VALUES ("Portuguesa",110.99,"G","Ingrediente Diponíveis",2,4);

DELETE FROM tb_pizzas WHERE id = 1;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias;


SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT sabor, preco, tamanho, disponibilidade_ingredientes, tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;


SELECT sabor, preco, tamanho, disponibilidade_ingredientes, tb_categorias.borda
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.bordaid = tb_categorias.id;

SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_pizzas.tamanho, tb_pizzas.disponibilidade_ingredientes, tb_categorias.categoria -- categorias que vão retornar
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_pizzas.categoriaid = 2; -- Somente as informações que tiverem esse atributo irão retornar