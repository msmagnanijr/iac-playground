<?php
include_once 'conectar.php';
if(isset($_POST['save']))
{	 
	 $nome = $_POST['nome'];
	 $sobrenome = $_POST['sobrenome'];
	 $email = $_POST['email'];
	 $email = $_POST['numero_titulo'];
	 $cidade = $_POST['cidade'];
	 $sql = "INSERT INTO pessoa (nome,sobrenome,email,numero_titulo,cidade)
	 VALUES ('$nome','$sobrenome','$email', '$numero_titulo' ,'$cidade')";
	 if (mysqli_query($conn, $sql)) {
		echo "Dados inseridos com sucesso!";
	 } else {
		echo "Erro: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>