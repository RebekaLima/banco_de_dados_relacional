CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
		id BIGINT AUTO_INCREMENT,
        produto VARCHAR(100) NOT NULL,
        autor VARCHAR (100) NOT NULL,
        preco DECIMAL (6,2),
        genero VARCHAR (100),
        editora VARCHAR (100),
        PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Livro Quarta Asa:Edição Especial Limitada", "Rebecca Yarros", 143.11, "Fantasia", "Planeta Minotauro");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Throne of Glass Hardcover Box Set:", "Sarah J. Maas", 823.24, "Fantasia", "Bloomsbury Publishing");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Livro Crime e castigo", "Fiódor Dostoiévski", 72.12, "Clássicos de Ficção", "Todavia");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Um reino de carne e fogo", "Jennifer L. Armentrout", 46.14, "Fantasia", "Galera");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("A Court of Thorns and Roses Hardcover Box", "Sarah J Maas", 555.27, "Fantasia", "Bloomsbury Publishing");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Box Trono de vidro", "Sarah J. Maas", 399.90, "Fantasia", "Galera");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Entendendo Algoritmos", "Aditya Y. Bhargava", 54.00, "Computação", "Novatec Editora");

INSERT INTO tb_produtos(produto, autor, preco, genero, editora)
VALUES ("Código Limpo", "Robert C. Martin", 66.21, "Computação", "Alta Books");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET produto = "Throne of Glass Hardcover Box" WHERE id = 2;