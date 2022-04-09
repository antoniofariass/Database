-- SQL Server, Postgres, Oracle, mySql


SELECT coluna1, coluna2   --SELECIONA AS COLUNAS A SEREM PEGAS
FROM tabela                 --DE ONDE AS COLUNAS SERÃO PEGAS


SELECT *                    --PARA PEGAR TODAS AS COLUNAS
FROM tabela

--------------------------------

SELECT *
FROM person.Person;

SELECT Title
FROM person.person;

SELECT *
FROM person.EmailAddress;

----------------------------------

--ATIVIDADE - PEGAR O PRIMEIRO E ULTIMO NOME PARA ANALISE DE NOMES MAIS COMUNS

SELECT FirstName , LastName   
FROM Person.Person;  

