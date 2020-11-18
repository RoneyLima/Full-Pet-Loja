-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Nov-2020 às 18:23
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojapet_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_marca`
--

CREATE TABLE `tb_marca` (
  `id_marca` int(6) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_marca`
--

INSERT INTO `tb_marca` (`id_marca`, `marca`) VALUES
(1, 'Golden'),
(2, 'Royal Canin'),
(3, 'Guabi'),
(4, 'Nutrilus'),
(5, 'Special Dog'),
(6, 'Premier'),
(7, 'Magnus');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id_produto` int(11) NOT NULL,
  `marca` int(6) NOT NULL,
  `setor` int(6) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `valor_antigo` decimal(6,2) NOT NULL,
  `valor_atual` decimal(6,2) NOT NULL,
  `img_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produto`, `marca`, `setor`, `descricao`, `valor_antigo`, `valor_atual`, `img_nome`) VALUES
(1, 4, 1, 'Ração Seca Nutrilus Pro Frango & Carne para Cães Adultos - 20 Kg\r\nNutrilus Pro', '142.90', '128.61', 'Racao_Seca_Nutrilus_Pro_Frango___Carne_para_Caes_Adultos.jpg'),
(3, 1, 1, 'Ração Seca PremieR Pet Golden Special Cães Adultos Frango e Carne - 15 Kg\r\nNutrilus Pro', '115.90', '104.31', 'Racao_Premier_Golden_Special_Caes_Adultos_Frango_e_Carne_-_15_Kg_1213490_2.jpg'),
(5, 1, 1, 'Ração Premier Golden Formula Cães Adultos Frango e Arroz Mini Bits - 3 Kg\r\n', '42.90', '38.61', 'Racao_Premier_Golden_Formula_Caes_Adultos_Frango_e_Arroz_Mini_Bits_-_3_Kg_1213821_2.jpg'),
(7, 5, 1, 'Ração Special Dog Premium Carne para Cães Adultos - 20 Kg\r\nSpecial Dog', '120.90', '108.81', 'Racao_Special_Dog_Premium_Carne_para_Caes_Adultos_1777282.jpg'),
(11, 3, 1, 'Ração Guabi Faro Adultos Raças Médias e Grandes Cozido de Carne, Fígado e Cereais - 1 Kg', '15.90', '14.31', 'Racao_Guabi_Heroi_Carne_e Vegetais_Adultos.jpg'),
(13, 3, 1, 'Ração Guabi Faro Cozidinho de Carne, Fígado e Frango para Cães Filhotes - 2 Kg\r\n', '27.90', '25.11', 'Racao_Guabi_Faro_Adultos_Racas_Médias_e_Grandes_Cozido_de_Carne_e_Cereais_3105166_1kg.jpg'),
(15, 6, 1, 'Ração Premier Pet Ambientes Internos Cães Filhotes Frango e Salmão - 1 Kg\r\n', '35.90', '32.31', 'Racao_Premier_Pet_Ambientes_Internos_Caes_Filhotes_Frango_e_Salmao.jpg'),
(18, 7, 1, 'Ração Magnus Todo Dia Sabor Carne para Cães Adultos - 25 Kg\r\n', '150.13', '135.12', 'Racao_Magnus_Todo_Dia_Sabor_Carne_para_Caes_Adultos_311810.jpg'),
(20, 1, 2, 'Ração Seca PremieR Pet Golden Salmão para Gatos Adultos Castrados - 1 Kg\r\n', '20.90', '18.81', 'Racao_Golden_Gatos_Adultos_Castrados_Salmao_31022435_1kg.jpg'),
(21, 1, 2, 'Ração Seca PremieR Pet Golden Gatos Adultos Carne - 3 Kg\r\n', '42.90', '38.61', 'Racao_Golden_Gatos_Adultos_Carne_310001_3kg_lateral.jpg'),
(22, 1, 2, 'Ração Seca PremieR Pet Golden Gatos Filhotes Frango - 10 Kg\r\n', '123.90', '111.51', 'Racao_Golden_Gatos_Filhotes_Frango_-_10_Kg_1213600_2.jpg'),
(26, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural Frango, Abóbora e Alecrim para Gatos Castrados - 1 Kg\r\n', '18.90', '17.01', 'Racao_Golden_Premier_Pet_Selecao_Natural_Frango__Abobora_e_Alecrim_para_Gatos_Castrados_2426646.jpg'),
(27, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural para Gatos Adultos - 1 Kg\r\n', '18.90', '17.07', 'Racao_Golden_Premier_Pet_Selecao_Natural_Frango__Abobora_e_Alecrim_para_Gatos_Castrados_2426646.jpg'),
(28, 2, 2, 'Ração Royal Canin Sterilised para Gatos Adultos Castrados - 1,5 Kg\r\n', '82.39', '74.15', 'Racao_Royal_Canin_Sterilised_para_Gatos_Adultos_Castrados_31022932.jpg'),
(29, 6, 2, 'Ração Premier Pet Gatos Castrados até 7 anos Ambientes Internos Salmão - 500 g\r\n', '24.90', '22.41', 'Racao_Premier_Pet_Gatos_Castrados_até_7_anos_Ambientes_Internos_Salmão_31023709.jpg'),
(30, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural para Gatos Filhotes - 10,1 Kg\r\n', '130.90', '117.81', 'Racao_Golden_Gatos_Filhotes_Frango_-_10_Kg_1213600_2.jpg'),
(31, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural Frango, Abóbora e Alecrim para Gatos Castrados - 1 Kg\r\n', '18.90', '17.01', 'Racao_Golden_Premier_Pet_Selecao_Natural_Frango__Abobora_e_Alecrim_para_Gatos_Castrados_2426646.jpg'),
(32, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural para Gatos Adultos - 1 Kg\r\n', '18.90', '17.07', 'Racao_Golden_Premier_Pet_Selecao_Natural_para_Gatos_Adultos_3110245_1Kg_l.jpg'),
(33, 2, 2, 'Ração Royal Canin Sterilised para Gatos Adultos Castrados - 1,5 Kg\r\n', '82.39', '74.15', 'Racao_Royal_Canin_Sterilised_para_Gatos_Adultos_Castrados_31022932.jpg'),
(34, 6, 2, 'Ração Premier Pet Gatos Castrados até 7 anos Ambientes Internos Salmão - 500 g\r\n', '24.90', '22.41', 'Racao_Premier_Pet_Gatos_Castrados_até_7_anos_Ambientes_Internos_Salmão_31023709.jpg'),
(35, 1, 2, 'Ração Seca PremieR Pet Golden Seleção Natural para Gatos Filhotes - 10,1 Kg\r\n', '130.90', '117.81', 'Racao_Golden_Premier_Pet_Seleção_Natural_para_Gatos_Filhotes_3110246_10_1Kg_l.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_setores`
--

CREATE TABLE `tb_setores` (
  `id_setor` int(6) NOT NULL,
  `setor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_setores`
--

INSERT INTO `tb_setores` (`id_setor`, `setor`) VALUES
(1, 'Cães'),
(2, 'Gatos'),
(3, 'Aves');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_users`
--

CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_marca`
--
ALTER TABLE `tb_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `setor_id_fk` (`setor`),
  ADD KEY `marca_id_fk` (`marca`);

--
-- Índices para tabela `tb_setores`
--
ALTER TABLE `tb_setores`
  ADD PRIMARY KEY (`id_setor`);

--
-- Índices para tabela `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_marca`
--
ALTER TABLE `tb_marca`
  MODIFY `id_marca` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `tb_setores`
--
ALTER TABLE `tb_setores`
  MODIFY `id_setor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `marca_id_fk` FOREIGN KEY (`marca`) REFERENCES `tb_marca` (`id_marca`),
  ADD CONSTRAINT `setor_id_fk` FOREIGN KEY (`setor`) REFERENCES `tb_setores` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
