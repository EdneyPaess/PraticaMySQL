CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

INSERT INTO produtos (nome, descricao, preco, quantidade, categoria) VALUES 
    ("Smartphone Samsung Galaxy S21 ", "Tela 6.8'' 256GB 5G", 5999.00, 50, "Eletrônicos"),
    ("Smart TV LED 55'' LG 4K", "Smart TV ThinQ AI 55UN731C", 3199.00, 30, "Eletrônicos"),
    ("Notebook Dell Inspiron 15 5000", "Intel Core i5 8GB 256GB SSD", 3999.00, 20, "Informática"),
    ("Máquina de Lavar Brastemp 12Kg", "Lava e Seca BWK12AB", 3999.00, 10, "Eletrodomésticos"),
    ("Geladeira Samsung Frost Free", "Side by Side RS65R5400B1", 8299.00, 15, "Eletrodomésticos"),
    ("Fogão Brastemp 5 Bocas", "Acendimento Automático BFS5NAB", 1999.00, 25, "Eletrodomésticos"),
    ("Câmera Canon EOS Rebel T8i", "Kit 18-55mm IS STM", 5999.00, 5, "Eletrônicos"),
    ("Fone de Ouvido JBL Tune 600BTNC", "Bluetooth com Cancelamento de Ruído", 399.00, 100, "Eletrônicos");
    
SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET quantidade = 12 WHERE id = 3;

SELECT * FROM ecommerce;