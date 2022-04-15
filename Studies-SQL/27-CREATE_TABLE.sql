--Serve para criar uma tabela 

CREATE TABLE nomeTabela(
    coluna1 tipo restricaoDaColuna,
    coluna2 tipo ,
    coluna3 tipo,
    ......
);

/*
RESTRIÇOES DAS COLUNAS

NOT NULL - Não permite nulos 
NOT NULL UNIQUE - nao permite nulos nem valores iguais  
UNIQUE - FORÇA que todos os valores de uma coluna sejam diferentes
PRIMARY KEY - uma junção de NOT NULL e UNIQUE 
FOREIGN KEY - identifica unicamente uma linha em outra tabela
CHECK - FORÇA uma condição especifica em uma coluna 
DEFAULT - FORÇA um valor padrao quando nenhum valor é passado 
*/

--criando banco de dados youtube 
CREATE TABLE Canal(
CanalID int Primary Key,
Nome varchar(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);

CREATE TABLE Video(
VideoID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Visualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duracao INT NOT NULL,
CanalID INT FOREIGN KEY REFERENCES Canal(CanalId)
)

--TREINANDO 

CREATE TABLE Caixa(
FuncionarioID int PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
VendaID INT DEFAULT 0
)


CREATE TABLE Venda(
ProdutoID INT PRIMARY KEY,
NomeProduto VARCHAR(150) NOT NULL,
Caixa INT FOREIGN KEY REFERENCES Caixa(FuncionarioID)
)