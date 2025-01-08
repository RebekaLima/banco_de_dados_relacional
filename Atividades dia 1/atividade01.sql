CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    nascimento DATE NOT NULL,
    cargo VARCHAR(100),
    salario Decimal(6,2),
    PRIMARY KEY (id)
);

DROP TABLE tb_colaboradores;

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cpf, nascimento, cargo, salario)
VALUES ("Rebeka", 12345678912, "2002-10-30", "Jovem Aprendiz", 1518.00);

INSERT INTO tb_colaboradores(nome, cpf, nascimento, cargo, salario)
VALUES ("Ygor", 12345678913, "2000-04-10", "Estagiário", 838.00);

INSERT INTO tb_colaboradores(nome, cpf, nascimento, cargo, salario)
VALUES ("Ana", 12345678914, "1998-01-10", "Auxiliar administrativo", 1800.00);

INSERT INTO tb_colaboradores(nome, cpf, nascimento, cargo, salario)
VALUES ("Luana", 12345678915, "1990-05-26", "Gestora de RH", 4000.00);

INSERT INTO tb_colaboradores(nome, cpf, nascimento, cargo, salario)
VALUES ("Eduardo", 12345678916, "1985-05-26", "Gestor de TI", 10000.00);

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL (7,2);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1850 WHERE nome = "Ana";