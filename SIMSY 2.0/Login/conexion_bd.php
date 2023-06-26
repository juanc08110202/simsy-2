<?php
$conexion=mysqli_connect("localhost", "root","c201831v","simsy","3306");
$conexion->set_charset("utf8");

if (!$conexion) {
    die("Error al conectar: " . mysqli_connect_error());
}
?>

