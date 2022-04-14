/*
Chave Primaria 
é uma coluna ou um grupo de colunas usada para identificar 
unicamente uma linha em uma tabela.

cria um indice unico  
*/

CREATE TABLE nome_Tabeça(
    nomeColuna tipoDeDados PRIMARY KEY
    nomeColuna tipoDeDados ...
)

/*
Chave Estrangeira 
uma coluna ou um grupo de colunas em uma tabela que identifica 
unicamente uma linha em outra tabela.

é simplesmente uma coluna ou grupo de colunas que é 
uma chave primária em outra tabela 

tabela que encontra a chave estrangeira é chamada de tabela 
referenciadora ou tabela filho.

e a tabela na qual a chave estrangeira é refereniada 
é chamada de tabela refernciada ou tabela pai 

