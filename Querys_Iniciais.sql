#CREATE DATABASE dio_mysql
#CREATE TABLE pessoa(ID_pessoa INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(20)NOT NULL, nascimento DATE)


#INSERT INTO pessoa(nome, nascimento) VALUES('Ariovaldo','1951-06-29');
#INSERT INTO pessoa(nome, nascimento) VALUES('Matheus','2003-02-10');
#INSERT INTO pessoa(nome, nascimento) VALUES('Beatriz','1966-09-18');

#SELECT * FROM pessoa ORDER BY nome DESC
#SELECT * FROM pessoa
#ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento;
#UPDATE pessoa SET genero='M' WHERE ID_pessoa=1;
UPDATE dio_mysql.pessoa SET genero='M' WHERE ID_pessoa=2;
#UPDATE pessoa SET genero='F' WHERE ID_pessoa=3;
#UPDATE pessoa SET genero='M' WHERE ID_pessoa=4;
#UPDATE pessoa SET genero='M' WHERE ID_pessoa=5;
#UPDATE pessoa SET genero='F' WHERE ID_pessoa=6;

SELECT  COUNT(ID_pessoa), filial, genero FROM pessoa GROUP BY filial
