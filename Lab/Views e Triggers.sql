DROP DATABASE IF EXISTS loja;
CREATE DATABASE loja;
USE loja;
SET GLOBAL log_bin_trust_function_creators = 1; -- Para permitir a criação de triggers

CREATE TABLE compra(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    preco FLOAT,
    pagamento FLOAT,
    troco FLOAT
);

CREATE VIEW QuantCompras AS (SELECT count(*) AS total FROM compra WHERE preco >= 10);

DELIMITER $$
CREATE TRIGGER CalculoTroco BEFORE INSERT
ON compra
FOR EACH ROW
BEGIN

SET NEW.troco =NEW.pagamento - NEW.preco;

END$$
DELIMITER ;


INSERT INTO compra(preco, pagamento) VALUES(9.5, 10.25);
INSERT INTO compra(preco, pagamento) VALUES(18.99, 25);
INSERT INTO compra(preco, pagamento) VALUES(5.99, 5.99);
INSERT INTO compra(preco, pagamento) VALUES(10.99, 10.99);
INSERT INTO compra(preco, pagamento) VALUES(15.99, 15.99);

select * from compra;
select * FROM QuantCompras;