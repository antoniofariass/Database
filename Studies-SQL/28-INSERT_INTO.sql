--Quando já se tem uma tabela e quer inserir dados 
--ou quando quer criar uma nova tabela utilizando o insert into 

INSERT INTO nomeTabela(coluna1, coluna2, ....)
VALUES(valor1,valor2)
VALUES(valor1,valor2)
VALUES(valor1,valor2)

INSERT INTO TabelaA (coluna1)  --puxar informação de uma tabela para outra existente
SELECT coluna2
FROM TabelaB

--Inserindo informações em uma tabela com 2 colunas id e nome 

INSERT INTO aula(id,nome)
VALUES(1,'aula 1')

--Inserindo dados em várias linhas de uma vez 

VALUES
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4');

--Criando uma nova tabela a partir de outra 

SELECT * INTO NovaTabela From TabelaAntiga

--Copianda uma tabela para outra ja existente 

INSERT INTO tabelaNova SELECT * FROM tabelaAntiga


--Treinando 

CREATE TABLE TabelNova(
Dados int 
)

INSERT INTO TabelNova(dados)
VALUES
(20),
(30),
(40)

CREATE TABLE TabelaNova2(
Dados int 

INSERT INTO TabelaNova2(Dados)
values (100)

INSERT INTO tabelnova SELECT * FROM TabelaNova2