--Vamos dizer que voce quer encontrar uma pessoa no banco de dados que vc sabe que  o nome dela era ovi... alguma CONTAINSTABLE

--SABE O COMEÇO DO NOME
SELECT *
FROM Person.Person 
WHERE FirstNAme like 'ovi%'

--SABE O FINAL DO NOME 
SELECT *
FROM Person.Person 
WHERE FirstNAme like '%TO'

--SABE O MEIO DO NOME 
SELECT *
FROM Person.Person 
WHERE FirstNAme like '%ESSA%'

--UTILIZAR O '_' SO PARA SUBSTITUIÇAO DE UM CARACTERE
SELECT *
FROM Person.Person 
WHERE FirstNAme like 'TO_'




