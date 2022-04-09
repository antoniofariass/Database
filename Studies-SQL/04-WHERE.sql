SELECT coluna1,coluna2, coluna_n   
FROM tabela
WHERE condicao;                              --FILTRAR ALGUM DADO NA TABELA

/*

OPERADOR - DESCRIÇAO 

= - IGUAL 
> - MAIOR QUE 
< - MENOR QUE
>= - MAIOR QUE OU IGUAL 
<= - MENOR QUE OU IGUAL 
<> - DIFERENTE DE
AND - OPERADOR LOGICO E 
OR - OPERADOR LOGICO OU



ATIVIDADES 
1- A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg
mas nao mais que 700kg para inspeção */

SELECT * 
FROM Production.Product
WHERE Weight > 500 and Weight < 700

/*
2- Foi pedido pelo marketing uma relaçao de todos os empregado(employees) que são 
casados(single and married) e sao asalariados(salaried)
*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

/*
3- Um usuário chamdo Peter Krebs está devendo um pagamento, consiga o email dele para que possamos
enviar uma cobrança!
(voce deve utilizar a tabela person.person e depois person.emailadress)
*/

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT *
FROM PERSON.EmailAddress
WHERE BusinessEntityID = 26

--R: peter0@adventure-works.com