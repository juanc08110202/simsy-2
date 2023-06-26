<!DOCTYPE html>
<html lang="es-ES">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../assets/estilo_acceso.css"></link>
	
	<title>Seleccion de perfil</title>
</head>

<body>
 
<div class="encabezado">
            <h2 class="nombrecol">INSI.LAJAS</h2>
            <img src="http://localhost/SIMSY%202.0/Agenda/LogoSimsyColegio.jpg" class="img" alt="logo de SIMSY">
</div>
     
     <div class="regresar">
         <a href="../index.html"><h3>Regresar</h3></a>
     </div>
    <br>
 

<?php
//Incluyendo La conexión con la base de datos
include ("../Login/conexion_bd.php");

?>

<div class = "titulo">
	<H1>SELECCION DE PERFIL<H1>

</div>


	<H3 class = "nombre">Instituto Pedagogico Nuestra Señora de las Lajas<H3>

<div class = "perfiles">

<?php

// Iniciar la sesión para obtener el usuario de validar.php
session_start();

// Obtener el dato de la variable de sesión (usuario y contraseña)
$usuario = $_SESSION['usuario'];
$contraseña = $_SESSION['password'];

// con el nombre del usuario realizar la consulta de su ID_contraseña para
// relacionarla mas adelante
$consult1 = "CALL recuperarIdContraseña('$usuario')";

// Ejecuta la consulta
$result1 = mysqli_query($conexion, $consult1);

// El resultado de la consulta es asignado a una variable $Id
    $Id = mysqli_fetch_assoc($result1);

    // Se guarda el valor del Id_contraseña que corresponde al ID del usuario
	// el cual se relaciona con la tabla cargo.
	$Id_contraseña = $Id["Id_Contraseña"];

	mysqli_close($conexion);

	include ("../Login/conexion_bd.php");
	
	$consult3 = "CALL recuperarNombreUsuario($Id_contraseña)";
	$result3 = mysqli_query($conexion, $consult3);
	$fila = mysqli_fetch_assoc($result3);
	
	if ($Id_contraseña) {

		include ("../Login/conexion_bd.php");

		$consult2 = "CALL recuperarPerfil($Id_contraseña)";

		$result2 = mysqli_query($conexion, $consult2);

		// se obtiene el número de filas resultantes de una consulta SELECT en MySQLi.
		if (mysqli_num_rows($result2) > 0) {

		// Mostrar los roles con botones
		echo "<p class= 'NombrePer' <br> Perfiles del usuario <br> $fila[Primer_Nombre] $fila[Segundo_Nombre] 
		$fila[Primer_Apellido] $fila[Segundo_Apellido]:<br> ";
	
		while ($rol = mysqli_fetch_assoc($result2)) {
			$perfil = $rol['perfiles'];

			if ($perfil == 'Administrador'){
				// Generar un botón para cada rol
			echo "<form class= 'Boton' method='POST' action='../Administrador/Admin.html'>";
			echo "<input type='submit' value='$perfil'>";
			echo "</form>";

			}elseif($perfil == 'Rector'){
				// Generar un botón para cada rol
			echo "<form class= 'Boton' method='POST' action='../Rector/Rector.html'>";
			echo "<input type='submit' value='$perfil'>";
			echo "</form>";

			}elseif($perfil == 'Coordinador'){
				// Generar un botón para cada rol
			echo "<form class= 'Boton' method='POST' action='http://localhost/SIMSY%202.0/coordinador/Coordinador.html'>";
			echo "<input type='submit' value='$perfil'>";
			echo "</form>";

			}elseif($perfil == 'Profesor'){
				// Generar un botón para cada rol
			echo "<form class= 'Boton' method='POST' action='../Profesor/Profesor.html'>";
			echo "<input type='submit' value='$perfil'>";
			echo "</form>";

			}elseif($perfil == 'Secretaria'){
				// Generar un botón para cada rol
			echo "<form class= 'Boton' method='POST' action='../Secretaria/Secretaria.html'>";
			echo "<input type='submit' value='$perfil'>";
			echo "</form>";
			}
			
		}
	} else {
		echo 'El usuario no cuenta con ningun perfil asociado';
	}
		mysqli_close($conexion);
	}

?>
		
</div>

<div class = "text">
	<H4 class = "texto">Usted cuenta con los siguientes perfiles de usuario.</H4> 
    <H4 class = "texto1">Por favor seleccione el perfil con el cual desea trabajar.</H4>
	
</div><br>

<footer class="pie">
	<strong>Recuerde que podra acceder al perfil siempre y cuando cuente con los permisos de acceso.</strong>
  </footer>

</body>
