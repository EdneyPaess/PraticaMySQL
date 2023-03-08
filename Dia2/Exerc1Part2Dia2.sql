-- Criando a tabela tb_personagens
CREATE TABLE tb_personagens (
  id_personagem INT NOT NULL AUTO_INCREMENT,
  nome_personagem VARCHAR(50) NOT NULL,
  nivel_personagem INT,
  poder_ataque INT,
  poder_defesa INT,
  id_classe INT NOT NULL,
  PRIMARY KEY (id_personagem),
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

-- Inserindo registros na tabela tb_personagens
INSERT INTO tb_personagens (nome_personagem, nivel_personagem, poder_ataque, poder_defesa, id_classe) VALUES
('Arthur', 10, 3000, 1500, 1),
('Morgana', 8, 2500, 1800, 2),
('Robin', 5, 2000, 1200, 3),
('Drácula', 12, 3500, 2500, 4),
('Lancelot', 9, 2700, 2000, 5),
('Merlin', 11, 3200, 2200, 2),
('Cristiano', 6, 1800, 1000, 1),
('Sofia', 7, 2200, 1800, 3);

-- Retornando todos os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;


-- Retornando todos os personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

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

-- Criando a tabela tb_personagens
CREATE TABLE tb_personagens (
  id_personagem INT NOT NULL AUTO_INCREMENT,
  nome_personagem VARCHAR(50) NOT NULL,
  nivel_personagem INT,
  poder_ataque INT,
  poder_defesa INT,
  id_classe INT NOT NULL,
  PRIMARY KEY (id_personagem),
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

-- Inserindo registros na tabela tb_personagens
INSERT INTO tb_personagens (nome_personagem, nivel_personagem, poder_ataque, poder_defesa, id_classe) VALUES
('Arthur', 10, 3000, 1500, 1),
('Morgana', 8, 2500, 1800, 2),
('Robin', 5, 2000, 1200, 3),
('Drácula', 12, 3500, 2500, 4),
('Lancelot', 9, 2700, 2000, 5),
('Merlin', 11, 3200, 2200, 2),
('Cristiano', 6, 1800, 1000, 1),
('Sofia', 7, 2200, 1800, 3);

-- Retornando todos os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Retornando todos os personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Retornando todos os personagens que possuem a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- Retornando os dados dos personagens juntamente com os dados da classe correspondente
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

-- Retornando os dados dos personagens que pertencem a uma classe específica
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe WHERE tb_classes.nome_classe = 'Arqueiro';

