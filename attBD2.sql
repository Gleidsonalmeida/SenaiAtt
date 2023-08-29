CREATE DATABASE TabelaLivros;
SHOW DATABASES;
USE TabelaLivros;

-- criando a tabela --
CREATE TABLE TabelaLivros.Mental(
id int auto_increment,
Livros varchar(255) not null,
Nome varchar(255) not null,
Sexo char not null, 
NdePags int not null,
Editors varchar(255) not null,
ValorCapaComum real not null,
ValorKindle real not null,
AnodePubli int not null,
primary key(id)
);

-- inserindo valores na tabela --
INSERT INTO TabelaLivros.Mental (Livros, Nome, Sexo, NdePags, Editors, ValorCapaComum, ValorKindle,
AnodePubli)
VALUES
 ('Pai Rico, Pai Pobre','Robert T. Kiyosaki','M','336','Alta Books','61.53','58.45','2018'), 
 ('Mindset','Carol S. Dweck','F','312','Objetiva','38.99','14.95','2017'),
 ('Como fazer amigos e influenciar pessoas','Dale Carnegie','M','256','Sextante','38.99','33.24','2019'),
 ('A Cabana','William P. Young','M','240','Arqueiro','35.99','17.90','2008'),
 ('O Poder do Habito','Charles Duhigg','M','408','Objetiva','42.99','29.90','2012'),
 ('Código Limpo','Robert C. Martin','M','425','Alta Books','91.99','87.39','2009'),
 ('Essencialismo','Greg McKeown','M','272','Sextante','53.58','33.24','2015'),
 ('Me Poupe!','Nathalia Arcuri','F','176','Sextante','32.86','17.09','2018'),
 ('Comece pelo Porquê','Simon Sinak','M','256','Sextante','50.58','24.90','2018'),
 ('O Alquimista','Paulo Coelho','M','206','Paralela','24.70','14.70','2017');


-- Consultar todos os dados da tabela --
SELECT * FROM TabelaLivros.Mental;


-- Consultar livros, autores e valor kindle somente de livros com valores menores que R$ 40,00 --
select id, Livros, Nome, valorKindle
from Mental
where ValorKindle < 40.00;

-- Consultar livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino --
select id, Livros, Nome, AnodePubli, Editors, Sexo
from Mental
where  Sexo = 'F' and AnodePubli < 2017 and Editors = 'Sextante';

-- Consultar  livro e editora de livros com mais de 200 páginas --
select id, Livros, NdePags, Editors
from Mental
where NdePags > 200;

-- Consultar o livro, número de páginas do livro e autores que começam com a letra "C" --
select id, Livros, NdePags, Nome
from Mental
where Nome like 'C%';

-- Consultar o autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books --
select id, Nome, Editors, AnodePubli, Sexo 
from Mental
where Sexo = 'M' and Editors = 'Alta books';

-- Consultar o livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00 --
select id, Livros, Nome, Ndepags, Editors, AnodePubli, ValorCapaComum 
from Mental
where ValorCapaComum > 50.00;

-- Consultar o livro, editora e valor capa comum onde o nome do autor comece com Nathalia --
select id, Livros, Editors, ValorCapaComum, Nome
from Mental
where Nome like 'Nathalia%';

-- Consultar o livro, autor, número de páginas dos livros publicados até 2017 --
select id, Livros, Nome, NdePags, AnodePubli
from Mental
where AnodePubli <= 2017;

-- Consultar os autores com livros publicados pela editora Sextante com mais de 200 páginas; --
select  id, Nome, Livros, Editors, NdePags
from Mental
where Editors = 'Sextante' and NdePags > 200;

-- Consultar o livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante --
select  id, Livros, Nome, ValorCapaComum, Editors
from Mental
where ValorCapaComum > 30 and Editors = 'Sextante';



