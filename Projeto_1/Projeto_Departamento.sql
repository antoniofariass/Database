-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Ago-2022 às 22:53
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



--Tabela `departamento`


CREATE TABLE `departamento` (
  `Nome` varchar(125) NOT NULL,
  `Sigla` varchar(15) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Coordenador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `departamento`


INSERT INTO `departamento` (`Nome`, `Sigla`, `Codigo`, `Coordenador`) VALUES
('Tec.Telemática', 'DTT', 121, 121031),
('Tec. Construção de Edifícios', 'DCE', 122, 122047),
('Eng. Computação', 'DEC', 125, 125331);




-- Tabela `dependente`


CREATE TABLE `dependente` (
  `Matricprof` int(11) DEFAULT NULL,
  `Nome` varchar(15) NOT NULL,
  `RG` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `DataNasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `dependente`

INSERT INTO `dependente` (`Matricprof`, `Nome`, `RG`, `Sexo`, `DataNasc`) VALUES
(122047, 'Antonio', '49.791.971-0', 'M', '1925-05-03'),
(121031, 'Jose', '13.128.636-5', 'M', '1931-06-24'),
(NULL, 'Marina', '43.990.928-4', 'F', '1920-12-01'),
(125331, 'Maria Clara', '19.465.159-9', 'F', '2005-11-27'),
(121003, 'Paulo', '18.423.082-2', 'M', '1987-07-01'),
(122047, 'Patricia', '41.587.803-2', 'F', '2011-10-21'),
(125335, 'Lucas', '26.159.668-8', 'M', '1987-10-05'),
(122047, 'Lauro', '50.989.645-5', 'M', '2014-06-14'),
(122045, 'Yago', '45.758.982-6', 'M', '1975-03-02');


-- Tabela `email`

CREATE TABLE `email` (
  `MatricProf` int(30) NOT NULL,
  `Email` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `email`

INSERT INTO `email` (`MatricProf`, `Email`) VALUES
(121003, 'pedropereira@bd.com.br'),
(121031, 'josemaria@bd.com.br'),
(122045, 'bentodiniz@bd.com.br'),
(122047, 'anaclara@bd.com.br'),
(125331, 'marialu@bd.com.br'),
(125332, 'joanamaria@bd.com.br'),
(125335, 'joaocarlos@bd.com.br');


-- Tabela `professor`

CREATE TABLE `professor` (
  `Nome` varchar(125) NOT NULL,
  `SNome` varchar(125) NOT NULL,
  `Matricula` int(30) NOT NULL,
  `DataNasc` date NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Matric_Coord_Area` int(11) DEFAULT NULL,
  `Depto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `professor`

INSERT INTO `professor` (`Nome`, `SNome`, `Matricula`, `DataNasc`, `Sexo`, `Salario`, `Matric_Coord_Area`, `Depto`) VALUES
('Pedro', 'Pereira da Siva', 121003, '1982-03-25', 'M', '4000.00', NULL, 121),
('José Maria', 'Campos', 121031, '1978-04-10', 'M', '7000.00', 121003, 121),
('Bento', 'Diniz Costa', 122045, '1980-11-27', 'M', '4000.00', NULL, 122),
('Ana Clara', 'Araújo Santos', 122047, '1994-12-30', 'F', '7200.00', 122045, 122),
('Maria Luiza', 'Machado', 125331, '1974-08-16', 'F', '6800.00', 125332, 125),
('Joana Maria', 'Pereira', 125332, '1990-06-12', 'F', '4500.00', NULL, 125),
('João Carlos', 'Matos Cavalcanti', 125335, '1976-07-22', 'M', '3700.00', 125332, 125);



-- Tabela `projeto`

CREATE TABLE `projeto` (
  `Nome` varchar(30) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Depto` int(11) DEFAULT NULL,
  `Duraçao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `projeto`

INSERT INTO `projeto` (`Nome`, `Codigo`, `Depto`, `Duraçao`) VALUES
('Projeto de Olímpiada', 2123, 125, '2022-04-01'),
('Projeto de Robotica', 2456, 122, '2022-07-23'),
('Projeto Extensivo ', 6754, 121, '2022-08-18'),
('Projeto BD', 8732, 121, '2022-05-23'),
('Projeto de IA', 9820, 125, '2022-07-21');


-- Estrutura da Tabela `telefone`
 
CREATE TABLE `telefone` (
  `MatricProf` int(30) NOT NULL,
  `Telefone` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `telefone`

INSERT INTO `telefone` (`MatricProf`, `Telefone`) VALUES
(121003, '(83) 99999-9090'),
(121031, '(71) 96521-8976'),
(122045, '(21) 98321-7653'),
(122047, '(19) 98761-6531'),
(125331, '(61) 96542-3435'),
(125332, '(23) 96541-9876'),
(125335, '(88) 97654-1212');


-- Estrutura da Tabela `trabalha_em`

CREATE TABLE `trabalha_em` (
  `MatricProf` int(11) NOT NULL,
  `CodProj` int(11) NOT NULL,
  `Horas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inserindo dados da Tabela `trabalha_em`

INSERT INTO `trabalha_em` (`MatricProf`, `CodProj`, `Horas`) VALUES
(121003, 2456, 12),
(121031, 8732, 3),
(122045, 2123, 12),
(122047, 8732, 12),
(125331, 2123, 32),
(125332, 2123, 21),
(125335, 8732, 6);



-- Chaves para Tabela `departamento`

ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Coordenador` (`Coordenador`);


-- Chaves para Tabela `dependente`

ALTER TABLE `dependente`
  ADD PRIMARY KEY (`RG`),
  ADD KEY `Matricprof` (`Matricprof`);


-- Chaves para Tabela `email`

ALTER TABLE `email`
  ADD PRIMARY KEY (`MatricProf`,`Email`);


-- Chaves para Tabela `professor`

ALTER TABLE `professor`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `Depto` (`Depto`),
  ADD KEY `Matric_Coord_Area` (`Matric_Coord_Area`);


-- Chaves para Tabela `projeto`

ALTER TABLE `projeto`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Depto` (`Depto`);


-- Chaves para Tabela `telefone`

  ALTER TABLE `telefone`
  ADD PRIMARY KEY (`MatricProf`,`Telefone`);


-- Chaves para Tabela `trabalha_em`

  ALTER TABLE `trabalha_em`
  ADD PRIMARY KEY (`MatricProf`,`CodProj`),
  ADD KEY `CodProj` (`CodProj`);



-- Limitadores para a tabela `departamento`

ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`Coordenador`) REFERENCES `professor` (`Matricula`);


-- Limitadores para a tabela `dependente`

ALTER TABLE `dependente`
  ADD CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`Matricprof`) REFERENCES `professor` (`Matricula`);


-- Limitadores para a tabela `professor`

ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`Depto`) REFERENCES `departamento` (`Codigo`),
  ADD CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`Matric_Coord_Area`) REFERENCES `professor` (`Matricula`);


-- Limitadores para a tabela `projeto`

ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`Depto`) REFERENCES `departamento` (`Codigo`);


-- Limitadores para a tabela `trabalha_em`

ALTER TABLE `trabalha_em`
  ADD CONSTRAINT `trabalha_em_ibfk_1` FOREIGN KEY (`MatricProf`) REFERENCES `professor` (`Matricula`),
  ADD CONSTRAINT `trabalha_em_ibfk_2` FOREIGN KEY (`CodProj`) REFERENCES `projeto` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
