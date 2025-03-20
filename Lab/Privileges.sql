CREATE DATABASE IF NOT EXISTS C207;
USE C207;

CREATE TABLE IF NOT EXISTS alunos(
	matricula INT,
    curso VARCHAR(20),
    nome VARCHAR(50),
    periodo INT,
    PRIMARY KEY(matricula, curso)
);

#Primeiro:
CREATE USER 'Aluno' IDENTIFIED BY '1111#GES';
CREATE USER 'Professor' IDENTIFIED BY '2222#GES';

#Segundo:
GRANT INSERT, SELECT, UPDATE, DELETE on C207.alunos to 'Aluno';

#Terceiro:
GRANT CREATE, ALTER, DROP ON C207.alunos to 'Professor';

#Quarto:
REVOKE INSERT, UPDATE, DELETE ON C207.alunos FROM 'Aluno';

#Quinto:
REVOKE CREATE, DROP ON C207.alunos FROM 'Professor';
