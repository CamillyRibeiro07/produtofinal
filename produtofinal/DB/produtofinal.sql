-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jun-2023 às 13:35
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtofinal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

CREATE TABLE `receitas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `ingredientes` varchar(255) NOT NULL,
  `modo_de_preparo` varchar(255) NOT NULL,
  `rendimento` int(11) NOT NULL,
  `data_de_publicacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `receitas`
--

INSERT INTO `receitas` (`id`, `nome`, `imagem`, `ingredientes`, `modo_de_preparo`, `rendimento`, `data_de_publicacao`) VALUES
(4, 'RISOTO DE CAMARÃO', 'https://cdn.panelinha.com.br/receita/1632748442444-risoto.jpg', 'INGREDIENTES 300 g de camarão cinza médio limpos (cerca de 26 unidades) 1 xícara (chá) de arroz para risoto 1 alho-poró 1 cebola ¼ de xícara (chá) de vinho branco 1,250 litro do caldo de camarão azeite a gosto sal e pimenta-do-reino moída na hora a gosto ', 'MODO DE PREPARO Numa panela, leve o caldo de camarão ao fogo alto. Quando ferver, abaixe o fogo e mantenha o caldo aquecido durante todo o preparo. Corte um pedaço de 5 cm do alho-poró, mais próximo da parte verde. Corte o pedaço ao meio no sentido do com', 0, '2023-06-15'),
(5, 'BOLO DE CHOCOLATE', 'https://static.itdg.com.br/images/1200-630/bd14ed0d98530fb34b6f60a295382a7a/348000-original.jpg', 'Massa ovo 4 ovos chocolate em pó 4 colheres (sopa) de chocolate em pó manteiga 2 colheres (sopa) de manteiga farinha de trigo 3 xícaras (chá) de farinha de trigo açúcar 2 xícaras (chá) de açúcar fermento em pó químico 2 colheres (sopa) de fermento leite 1', 'Massa Em um liquidificador adicione os ovos, o chocolate em pó, a manteiga, a farinha de trigo, o açúcar e o leite, depois bata por 5 minutos.  2 Adicione o fermento e misture com uma espátula delicadamente.  3 Em uma forma untada, despeje a massa e asse ', 0, '2023-06-07'),
(6, 'PÃO DE QUEIJO', 'https://www.receitasnestle.com.br/sites/default/files/srh_recipes/6131b4013456c413556c9e811aff75d2.jpg', 'Ingredientes 1 xícara de leite ½ xícara de óleo ½ colher (sopa) rasa de sal 500g de polvilho doce 2 ovos 1 ½ xícara de queijo meia cura ralado', 'Modo de Preparo Coloque o leite, o óleo e o sal numa leiteira. Leve ao fogo alto e, quando levantar fervura, despeje a mistura sobre o polvilho previamente colocado numa vasilha.  Mexa bem com uma colher de pau, para que o polvilho fique impregnado de líq', 35, '2023-06-28'),
(7, 'DONUTS RECHEADO', 'https://amoradoceria.com.br/wp-content/uploads/2022/02/donuts-recheado-de-chocolate.jpg', 'Massa 2 e 1/2 colheres (chá) de fermento seco água 2 colheres (sopa) de água morna farinha de trigo 3 e 1/4 xícaras de farinha trigo leite 1 xícara de leite em temperatura ambiente 1/4 xícara de margarina sem sal amolecida (ou manteiga, se preferir) gema ', 'Recheio: Em uma panela, junte o leite, a baunilha e o sal e leve ao fogo médio até levantar fervura.  2 Em uma tigelinha, misture o açúcar e o amido de milho, acrescente o ovo e misture com um fouet (batedor de claras).  3 Em seguida, coloque somente 1/3 ', 10, '2023-06-14');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `receitas`
--
ALTER TABLE `receitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
