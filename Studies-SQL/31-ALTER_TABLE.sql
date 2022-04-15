--Alterar a estrutura de uma tabela

ALTER TABLE nomeTabela
ACAO 

/*
- add, remover ou alterar uma coluna
- set valores padroes para uma coluna
- add ou remover restricoes de uma coluna
- renomear uma tabela 
*/

--Adicionando Coluna 
ALTER TABLE teste 
ADD ativo BIT

--Alterar restricao da coluna 
ALTER TABLE teste 
ALTER COLUMN categoria VARCHAR(300) NOT NULL 

--Alterar nome da coluna 
EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'

--Alterar nome da tabela
EXEC sp_RENAME 'nomeTabelaAtual' , 'nomeTabelaNova'

--TREINANDO 
CREATE TABLE DESAFIO(
Coluna1 VARCHAR(200) NOT NULL PRIMARY KEY,
Coluna2 int NOT NULL,
Coluna3 int NOT NULL UNIQUE 
)

ALTER TABLE Desafio 
ALTER COLUMN Coluna1 VARCHAR(300) NOT NULL

EXEC sp_RENAME 'Desafio.Coluna2', 'ColunaModificada', 'COLUMN'

EXEC sp_RENAME 'Desafio' , 'Desafio Modificado'


