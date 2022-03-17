CREATE DATABASE movies_controll
CREATE TABLE movies(id_movie  INT PRIMARY KEY AUTO_INCREMENT, 
tipo INT, 
nome VARCHAR(30) NOT NULL, 
total_ep INT, 
atual_ep INT, 
last_view DATETIME DEFAULT CURRENT_TIMESTAMP);              

# Incluir registros com data de hoje no last_view                

INSERT INTO movies(tipo, nome) VALUES(1,'Friends');
INSERT INTO movies(tipo, nome) VALUES(1,'Avengers');
INSERT INTO movies(tipo, nome) VALUES(1,'Todo mundo odeia Chris');
INSERT INTO movies(tipo, nome) VALUES(0,'300');
INSERT INTO movies(tipo, nome) VALUES(0,'1917');

# Alterar as datas dos registros 3, 4 e 5 para 01/03/21

UPDATE movies SET last_view = '2021-03-01'  WHERE id_movie = 3;
UPDATE movies SET last_view = '2021-03-01'  WHERE id_movie = 4;
UPDATE movies SET last_view = '2021-03-01'  WHERE id_movie = 5;

#Exibir todos os registros para conferência
SELECT * FROM movies

#Exibir só os registros de séries
SELECT * FROM movies WHERE tipo = 0

#Ver quais filmes  assisti em um determinado periodo
SELECT * FROM movies WHERE last_view > '2021-01-01' AND = last_view < '2021-01-31' 