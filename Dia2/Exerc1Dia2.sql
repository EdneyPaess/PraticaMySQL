-- Criando o banco de dados
CREATE DATABASE db_generation_game_online;

-- Selecionando o banco de dados criado
USE db_generation_game_online;

-- Criando a tabela tb_classes
CREATE TABLE tb_classes (
  id_classe INT NOT NULL AUTO_INCREMENT,
  nome_classe VARCHAR(50) NOT NULL,
  atributo1_classe VARCHAR(50),
  atributo2_classe VARCHAR(50),
  PRIMARY KEY (id_classe)
);

-- Inserindo registros na tabela tb_classes
INSERT INTO tb_classes (nome_classe, atributo1_classe, atributo2_classe) VALUES
('Guerreiro', 'Força', 'Defesa'),
('Mago', 'Inteligência', 'Mana'),
('Arqueiro', 'Agilidade', 'Precisão'),
('Necromante', 'Vida', 'Dano mágico'),
('Cavaleiro', 'Cavalo', 'Lança');