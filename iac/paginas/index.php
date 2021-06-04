<?php
$db = mysqli_connect('localhost','root','redhat','tse')
or die('Erro ao se conectar no MariaDB/MySQL server!');
?>

<html>
 <head>
 </head>
 <body>
 <h1>Listando os Eleitores do Brasil</h1>

<?php

$query = "SELECT * FROM eleitor";
mysqli_query($db, $query) or die('Erro ao realizar a query!');

$result = mysqli_query($db, $query);

while ($row = mysqli_fetch_array($result)) {
 echo $row['nome'] . ' ' . $row['sobrenome'] . ' ' . $row['email'] . '  ' . $row['numero_titulo'] . '  ' . $row['cidade'] .'<br />';
}

mysqli_close($db);
?>

</body>
</html>