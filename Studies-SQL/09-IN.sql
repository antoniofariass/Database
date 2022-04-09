SELECT *
FROM tabela
WHERE coluna valor IN(valor1,valor2)

--Se utiliza junto com o WHERE

--Para verificar se um valor corresponde com qualquer valor passado na lista de valores.

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN(2,7,13)