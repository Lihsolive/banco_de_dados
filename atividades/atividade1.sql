CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
		id bigint auto_increment,
        nome VARCHAR(255) not null,
        idade int not null,
        email VARCHAR(50) not null,
        cargo VARCHAR(50) not null,
        salario decimal not null,
        PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("Maria Andrade", 28, "maria.andrade@email.com", "analista financeiro", 3200);
INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("José Carlos", 32, "zec@email.com", "gerente administrativo", 2850);
INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("Valéria Santos", 24, "valeria_santos@email.com", "assistente administrativa", 1800);
INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("Amanda Martins", 35, "amanda@email.com", "diretora criativa", 4100);
INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("Marcelo Borges", 43, "marcelo.borges@email.com", "supervisor de ti", 4050);
INSERT INTO tb_colaboradores(nome, idade, email, cargo, salario)
VALUES("Matheus Enrique", 23, "math_enri@email.com", "estagiário de desenvolvimento web", 1200);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE id = 3;

SELECT * FROM tb_colaboradores WHERE salario < 2000;
SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET email = "ze.carlos@email.com" WHERE id = 2;
UPDATE tb_colaboradores SET nome = "Matheus Henrique", email = "math_henri@email.com"  WHERE id = 6;
