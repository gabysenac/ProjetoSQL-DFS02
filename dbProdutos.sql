drop database dbProdutos;
 
create database dbProdutos;
 
use dbProdutos;
 
CREATE TABLE PRODUTOS 

( 

CODIGO INT, 

NOME VARCHAR(50), 

TIPO VARCHAR(25), 

QUANTIDADE INT, 

VALOR DECIMAL(10,2) 

);

INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (1, 'IMPRESSORA', 'INFORMATICA', 200, 600.00);
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (2, 'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (3, 'DVD PLAYER', 'ELETRONICOS', 250, 500.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (4, 'MONITOR', 'INFORMATICA', 400, 900.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (5, 'TELEVISOR', 'ELETRONICOS', 350, 650.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (6, 'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (7, 'CELULAR', 'TELEFONE', 450, 850.00);
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (8, 'TECLADO', 'INFORMATICA', 300, 450.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (9, 'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00); 
INSERT INTO PRODUTOS (CODIGO, NOME, TIPO, QUANTIDADE, VALOR) VALUES (10, 'MOUSE', 'INFORMATICA', 400, 60.00);

DESC PRODUTOS;
SELECT * FROM PRODUTOS;


-- pra ver os tipos sem repetição, campos sem repetição
 select distinct tipo from produtos;
 select * from PRODUTOS where tipo = 'INFORMATICA';
 select tipo from produtos order by tipo;





 -- todos os campos e todos os registros dos campos
 -- select * from produtos where valor >= 600;
 -- select valor as 'valor' from produtos where valor >= 600.00;







 -- busca por codig
 select * from produtos where codigo = 1;






 -- busca por nome
 -- nome like '%%'
 -- tipos de ultilizaçaõ da busca ( nome = campo, busca pela sentença de caracteres que tem, e te da a filtragem de nome, te da o nomes com as diferentes letras que voce escolher)
 -- (select * from produtos where tipo like '%i%'; todos os campos que começa com a letra i, no caso é o tipo que começa com a letra i. todos os tipos de campo que começa com a letra i)
-- (quero buscar tudo que termina com s filtrando o tipo ainda)



-- buscando valores dentro do banco de dados com as letras do inicio e do final
	--select * from produtos where tipo like 'i%';
	--select * from produtos where tipo like '%s';





-- sintaxe AND OR e IN
--select * from produtos where tipo like '%o%' and valor <= 600;
--select * from produtos where tipo like '%o%' or valor <= 600;
--select * from produtos where tipo = 'INFORMATICA' or tipo = 'TELEFONE';
--select * from produtos where tipo in('INFORMATICA','TELEFONE');
-- (not) que o tipo nao é informatica e nao é telefone 
--select * from produtos where not tipo in('INFORMATICA','TELEFONE');
--select * from produtos where valor >= 100 and valor <=300;

-- ele vai trazer as coisas que estao dentro, onde o valor 'esta entre' 
-- select * from produtos where valor between 100 and 300; 
-- select * from produtos where valor not between 100 and 300; 
















-- Atividade proposta Apostila Laboratório página 46

-- 1. Aumente em 12% o valor dos produtos cujo nomes iniciem com a letra "F"
update produtos set valor = valor * 1.12 where nome like 'f%';
select * from produtos where nome like 'f%';




-- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600
update produtos set quantidade = quantidade + 50 where valor between 400 and 600;
select * from produtos where valor between 400 and 600;




-- 3. Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque seja, maiores que 300
update produtos set valor = valor *0.5 where quantidade > 300;
select * from produtos where quantidade > 300;




-- 4. Exiba o produtudo de CODIGO = 4
select * from produtos where codigo = 4;





-- 5. Exibir todos os produtos que nao tenham a letra "Y"
select * from produtos where nome not like '%Y%';




-- 6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'
select * from produtos where nome like 'MO%' and tipo like '%MA%';



 
