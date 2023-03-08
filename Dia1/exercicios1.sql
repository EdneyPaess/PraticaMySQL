CREATE DATABASE db_colaboradores;
USE db_colaboradores;
CREATE TABLE tb_colaboradores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

INSERT INTO tb_colaboradores(nome,idade, cargo,salario,departamento) values
('João', 25, 'Programador', 3500.00, 'TI'),
('Maria', 35, 'Analista de RH', 2500.00, 'RH'),
('Pedro', 28, 'Engenheiro', 4500.00, 'Engenharia'),
('Lucas', 30, 'Gerente de Vendas', 2800.00, 'Vendas'),
('Ana', 22, 'Estagiária', 1200.00, 'RH');

select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00;
update tb_colaboradores SET salario = 4000.00 where id= 3;

SELECT * FROM tb_colaboradores;