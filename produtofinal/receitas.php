<?php

include 'db.php'; ?>

<!DOCTYPE html> 
<html>
<head>
<link rel='stylesheet' href='estilo.css'> 
<title>RECEITAS</title> </head>
<body class='listar'>

<header>
    <h1>Meu Site de Receitas</h1>
  </header>
  
  <nav>
    <a href="index.php">Início</a>
    <a href="receitas.php">Receitas</a>
    <a href="cadastrar.php">Poste sua receita aqui...</a>
    
  </nav>

<?php
$stmt = $pdo->query('SELECT * FROM receitas');
 $receitas = $stmt->fetchAll(PDO::FETCH_ASSOC);
if (count($receitas)== 0) {
echo '<p>Nenhuma Receita Cadastrada.</p>';
} else {
echo "<div class = 'div-imagens'>";

foreach ($receitas as $receita) {
  echo "<div class = 'pizza-ind'>";
  echo "<a href='suareceita.php?id=" . $receita['id'] . "'><img class='img1' src='" . $receita['imagem'] . "'  height='200'></img></a>";
  echo "<H1 style='margin:20px'>" . $receita['nome'] . "</h1></br></div>";

}

echo '</div>';
}
?>

<footer>
    &copy; 2023 Meu Site de Receitas. Todos os direitos reservados.
  </footer>
</body>
</html>

