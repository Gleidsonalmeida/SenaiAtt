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


-- Consultar dados dos livros e das editoras --
select id, Livros, Editors
from Mental;

-- Consultar livros, editoras e autores do sexo masculino --
select id, Livros, Editors, Sexo
from Mental
where  Sexo = 'M';

-- Consultar livros, Numero de paginas e autores do sexo feminino --
select id, Livros, NdePags, Sexo
from Mental
where Sexo = 'F';

-- Consultar o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017 --
select id, Nome, Editors, AnodePubli
from Mental
where AnodePubli < 2017;

-- Consultar o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Alta Books --
select id, Nome, Sexo, Livros, Editors 
from Mental
where Sexo = 'M' and Editors = 'Sextante' or Editors = 'Alta books';

-- Consultar o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum --
select id, Livros, Ndepags, Editors, AnodePubli, ValorCapaComum 
from Mental;

-- Consultar o nome do livro, autor, número de páginas e valor no Kindle --
select id, Livros, Nome, NdePags, ValorKindle
from Mental;

-- Consultar o nome dos autores com livros publicados pela editora Sextante --
select id, Nome, Livros, Editors
from Mental
where Editors = 'Sextante';

-- Consultar o nome do livro, autores, valor com capa comum e valor no Kindle --
select  id, Livros, Nome, ValorCapaComum, ValorKindle
from Mental;

