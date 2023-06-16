<?php
require_once 'db.php';
?>

<!DOCTYPE html>
<html lang="pt-br">
<link rel='stylesheet' href='estilo.css'> 
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo.css">
    <title>RECEITAS DA CAMS<3</title>
</head>
<body>
<body>
  <header>
    <h1>Meu Site de Receitas</h1>
  </header>
  
  <nav>
    <a href="index.php">Início</a>
    <a href="receitas.php">Receitas</a>
    <a href="cadastrar.php">Poste sua receita aqui...</a>
    
  </nav>
  

   <div class="container-formulario">
       
    <?php
if (isset($_POST['submit'])){
$nome=$_POST['nome'];
$ingredientes=$_POST['ingredientes'];
$modo_de_preparo=$_POST['modo_de_preparo'];
$rendimento=$_POST['rendimento'];
$data_de_publicacao=$_POST['data_de_publicacao'];
$link=$_POST['link'];


    $stmt = $pdo->prepare('INSERT INTO receitas(nome, ingredientes, modo_de_preparo, rendimento, data_de_publicacao,imagem)
    VALUES (:nome,  :ingredientes, :modo_de_preparo, :rendimento, :data_de_publicacao, :imagem)');
    $stmt->execute(['nome'=> $nome, 
    'ingredientes'=>$ingredientes,
    'modo_de_preparo'=>$modo_de_preparo, 'rendimento'=> $rendimento,
    'data_de_publicacao'=>$data_de_publicacao, 'imagem'=>$link]);

    if($stmt->rowcount()){
        echo '<span>Cadasto feito com sucesso!</span>';
    }else{
        '<span>Erro ao cadastrar. tente novamente mais tarde.</span>';
    }
}
if(isset($erro)){
    echo '<span>' . $erro .'</span>';
}

?>
<form method="post">
    <label for="nome">Nome:</label>
    <input type="text" name="nome" required><br>
        
    <label for="ingredientes">Ingredientes:</label>
    <input type="text" name="ingredientes" required><br>
        
    <label for="modo_de_preparo">Modo de preparo:</label>
    <input type="text" name="modo_de_preparo" required><br>
        
    <label for="rendimento">Rendimento:</label>
    <input type="text" name="rendimento" required><br>
    <div>

    <label for="data_de_publicacao">Data de publicação:</label>
    <input type="date" name="data_de_publicacao" required><br>
    
    <label for="link">link da imagem:</label>
    <input type="text" name="link" required><br>
    <div>
        <button type="submit" name="submit" value="postar">concluir</button>
        
        <div>
</form>
    </div>

    <footer>
    &copy; 2023 Meu Site de Receitas. Todos os direitos reservados.
  </footer>

</body>
</html>