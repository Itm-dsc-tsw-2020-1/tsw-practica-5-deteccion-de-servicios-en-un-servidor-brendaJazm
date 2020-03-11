<?php
$sevidor = "localhost";
$usuario = "root";
$clave = "";
$base = "escaneo";

$conexion = mysqli_connect($sevidor, $usuario, $clave, $base);

mysqli_set_charset($conexion, "utf8");
$sql = "SELECT * FROM puertos";
$resultado = mysqli_query($conexion, $sql);
?>

<html>
<head>
    <title>Tabla de puertos abiertos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>


<table class="table table-hover table-striped table-condensed table-bordered">
    <thead>
    <tr>
        <th colspan="4" class="info text-center"> PUERTOS MAQUINA 200.33.171.13
        </th>
    </tr>
    <tr>
        <th>Puerto</th>
        <th>Estado</th>
        <th>Servicio</th>
        <th>IP</th>

    </tr>

    </thead>
    <tbody>
    <?php
    while ($fila = mysqli_fetch_array($resultado)) {

        ?>
        <tr>
            <td><?php echo $fila['puerto']?></td>
            <td><?php echo $fila['estado'] ?></td>
            <td><?php echo$fila['servicio'] ?></td>
            <td><?php echo$fila['ip'] ?></td>

        </tr>
    <?php } ?>
    </tbody>
</table>
</body>
</html>

