CREATE DATABASE if not exists AV1;
USE AV1;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE if not exists Heroi(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    nome_heroi VARCHAR(50) NOT NULL,
    poder VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    nome_inimigo VARCHAR(50) NOT NULL
);
DELETE FROM Heroi;

SELECT * FROM Heroi;

-- Responda a letra a) aqui
INSERT INTO Heroi VALUES (DEFAULT, "Peter Parker", "Homem Aranha",
"soltar teia", 16, "Duende Verde"), (DEFAULT, "Tony Stark", "Homem de Ferro",
"tecnologia", 53, "Mandarim"), (DEFAULT, "Steve Rogers", "Capitão América",
"super força", 105, "Caveira Vermelha"), (DEFAULT, "Stephen Strange", "Doutor Estranho",
"magia", 95, "Dormammu"), (DEFAULT, "Natasha Romanoff", "Viúva Negra",
"nenhum", 39, "Bullseye"), (DEFAULT, "Wanda Maximoff", "Feiticeira Escarlate",
"magia", 30, "Agatha Harkness");


-- Respoda a letra b) aqui
SELECT * FROM Heroi WHERE idade >= 18;

-- Responda a letra c) aqui
SELECT MAX(idade) FROM Heroi;

-- Responda a letra d) aqui
UPDATE Heroi SET idade = 18 WHERE id = 1;
SELECT nome, idade, poder FROM Heroi WHERE id = 1;

-- Responda a letra e) aqui
DELETE FROM Heroi WHERE poder = "nenhum";

-- Responda a letra f) aqui
SELECT nome_heroi FROM Heroi where nome_inimigo = "Agatha Harkness";

-- Responda a letra g) aqui
SELECT * FROM Heroi WHERE poder = "magia" AND idade>50;

-- Responda a letra h) aqui
SELECT * FROM Heroi WHERE nome_heroi LIKE "Ho___%";

-- Responda a letra i) aqui
SELECT DISTINCT poder FROM Heroi;