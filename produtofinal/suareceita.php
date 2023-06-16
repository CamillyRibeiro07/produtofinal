<?php include 'db.php'; ?>
<!DOCTYPE html> 
<html>
<head>
<link rel='stylesheet' href='style.css'> 
<title>RECEITA</title> </head>
<body class='listar'>
<h1>RECEITA</h1>
<?php
$id = $_GET['id'];

$stmt = $pdo->prepare('SELECT * FROM receitas WHERE id = ?');
$stmt->execute([$id]);
$receita = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (count($receita)== 0) {
echo '<p>Nenhuma fruta.</p>';
} else {
echo '<table border="1">';
echo '<thead><tr><th>Nome</th> <th>Ingredientes</th> <th>Modo de Preparo</th><th>Rendimento</th><th>Data de Publicação</th></tr></thead>';
echo '<tbody>';

foreach ($receita as $item) {
echo '<tr>';
echo '<td>' . $item['nome'] . '</td>';
echo '<td>' . $item['ingredientes'] . '</td>'; 
echo '<td>' . $item['modo_de_preparo'] . '</td>';
echo '<td>' . $item['rendimento'] . '</td>';
echo '<td>' . $item['data_de_publicacao'] . '</td>';
echo '</tr>';
}

echo '</tbody>';
echo '</table>';
}
?>

</body>

</html>