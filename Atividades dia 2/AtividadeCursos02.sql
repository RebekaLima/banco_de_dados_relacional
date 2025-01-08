CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
        categoria VARCHAR(255),
        subcategoria VARCHAR (255)
);

INSERT INTO tb_categorias (categoria)
VALUES ("TI e software");

INSERT INTO tb_categorias (categoria)
VALUES ("Design e criatividade");

INSERT INTO tb_categorias (subcategoria)
VALUES ("Dados");

INSERT INTO tb_categorias (subcategoria)
VALUES ("Software");

INSERT INTO tb_categorias (subcategoria)
VALUES ("Fashion");

INSERT INTO tb_categorias (subcategoria)
VALUES ("Design");

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    disponibilidade VARCHAR (255) NOT NULL,
    aulas VARCHAR(255),
    categoriaid BIGINT,
    subcategoriaid BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id),
    FOREIGN KEY (subcategoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Ilustrador Profissional", 1100.00, "Turmas abertas", "Gravadas",2, 6);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Java Aplicado a Projetos", 550.00, "Turmas fechadas","On-line", 1, 4);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Designer Gráfico", 2000.00, "Turmas fechadas", "Gravadas", 2, 6);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Designer de Produtos Digitais", 2200.00, "Turmas fechadas","On-line", 2, 6);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Fashion Design", 420.00, "Turmas abertas","On-line", 2, 5);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Analista de dados", 1500.00, "Turmas abertas","Gravadas", 1, 3);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Desenvolvedor Full Stack Java", 1700.00, "Turmas abertas","Gravadas", 1, 4);

INSERT INTO tb_cursos (nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid)
VALUES ("Engenheiro Front-end", 900.00, "Turmas fechadas","Gravadas", 2, 5);

SELECT *  FROM tb_categorias;

SELECT *  FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 and 1000.00 ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE nome LIKE "%j%";

SELECT nome, preco, disponibilidade, aulas, categoriaid, subcategoriaid
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT tb_cursos.nome, tb_cursos.preco, tb_cursos.disponibilidade, tb_cursos.aulas, tb_categorias.categoria -- categorias que vão retornar
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_cursos.categoriaid = 1;