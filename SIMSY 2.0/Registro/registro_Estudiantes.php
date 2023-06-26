<!DOCTYPE html>
<html lang="es-ES">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Esta descripción es la que aparece en los buscadores debajo de la URL" />
	<link href="./styles/practica7.css" rel="stylesheet" type="text/css" />
	<link href="./styles/formulario.css" rel="stylesheet" type="text/css" />
	<link href="./styles/resets.css" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,500,600,700,800&display=swap" rel="stylesheet">
	<title>Registro</title>
</head>

<body>
	<header>
		<a href="" class='logo'>
			<img src="../img/logo.jpg" />
		</a>
		<nav>
			<a class="ultimos" href="../index.html">Inicio</a>
			
		</nav>
		<div class="options">
			<img src="./img/Search.png" />
			<img src="./img/User.png" />
		</div>

	</header>
	<main>
		<h1>Registro de Estudiante</h1>
		<form method="post">
			<div class='field'>
				<label>Primer Nombre</label>
				<input name= "PrimerNombre" type='text' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Segundo Nombre</label>
				<input name='SegundoNombre' type='name' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Primer Apellido</label>
				<input name='PrimerApellido' type='name'minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Segundo Apellido</label>
				<input name='SegundoApellido' type='name' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Tipo de Documento</label>
				<select name='TipoDocumento'  type='TipoDocuemnto' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoTipoDocumento = "call recuperarTipoDocumento()";

					$resultadoConsultaTipoDocumento = mysqli_query($conexion, $consultaListadoTipoDocumento);

					if ($resultadoConsultaTipoDocumento){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaTipoDocumento)){
							echo '<option value="'.$fila['Nomenclatura'].'">'.$fila['Nomenclatura'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>

				</select>
				</div>
			<div class='field'>
				<label>Numero del Documento</label>
				<input name='N_Documento' type='name' minlength="3" maxlength="15" required pattern="[0-9]+" />
			</div>
			<div class='field'>
				<label>Edad</label>
				<input name='Edad' type='name' minlength="1" maxlength="3" required pattern="[0-9]+" />
			</div>
            <div class='field'>
				<label>Grado</label>
				<select name='Grado'  type='Grado' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoGrados = "call recuperarGrado()";

					$resultadoConsultaGrados = mysqli_query($conexion, $consultaListadoGrados);

					if ($resultadoConsultaGrados){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaGrados)){
							echo '<option value="'.$fila['Id_Grado'].'">'.$fila['Nombre_Grado'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
                </div>
                <div class='field'>
				<label>Curso</label>
				<select name='Curso'  type='Curso' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoCurso = "call recuperarCurso()";

					$resultadoConsultaCurso = mysqli_query($conexion, $consultaListadoCurso);

					if ($resultadoConsultaCurso){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaCurso)){
							echo '<option value="'.$fila['Id_Curso'].'">'.$fila['Indicativo_Curso'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
                </div>
			<div class='field'>
				<label>Direccion </label>
				<input name='Direccion' type='Direccion' minlength="5" maxlength="30"  />
			</div>
			<div class='field'>
				<label>Localidad</label>
				<select name='Localidad'  type='Localidad' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoLocalidades = "call recuperarLocalidades()";

					$resultadoConsultaLocalidad = mysqli_query($conexion, $consultaListadoLocalidades);

					if ($resultadoConsultaLocalidad){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaLocalidad)){
							echo '<option value="'.$fila['Id_Localidades'].'">'.$fila['Localidad'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
                </div>
                <div class='field'>
				<label>Barrio</label>
				<select name='Barrio'  type='Barrio' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoBarrios = "call recuperarBarrio()";

					$resultadoConsultaBarrios = mysqli_query($conexion, $consultaListadoBarrios);

					if ($resultadoConsultaBarrios){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaBarrios)){
							echo '<option value="'.$fila['Id_Barrios'].'">'.$fila['barrios'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
			</div>
			<div class='field'>
				<label>Ciudad</label>
				<select name='Ciudad' type='Ciudad' required value="">
					<option selected disabled>--</option>
					<?php

					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoCiudades = "CALL recuperarciudad()";

					$resultadoConsultaCiudades = mysqli_query($conexion, $consultaListadoCiudades);

					if ($resultadoConsultaCiudades){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaCiudades)){
							echo '<option value="'.$fila['Id_Ciudad'].'">'.$fila['Ciudad'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>

				</select>
			</div>
			<div class='field'>
				<label>Eps</label>
				<select name='Eps' type='eps' required value="">
					<option selected disabled>--</option>
					<?php

					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoEPS = "call recuperarEps()";

					$resultadoConsultaEps = mysqli_query($conexion, $consultaListadoEPS);

					if ($resultadoConsultaEps){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaEps)){
							echo '<option value="'.$fila['Id_EPS'].'">'.$fila['NombreEps'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
			</div>
			<div class='field'>
				<label>ARL</label>
				<select name='Arl' type='arl' required value="">
					<option selected disabled>--</option>
					<?php

					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListaARL = "call recuperarArl()";

					$resultadoConsultaARL = mysqli_query($conexion, $consultaListaARL);

					if ($resultadoConsultaEps){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaARL)){
							echo '<option value="'.$fila['Id_ARL'].'">'.$fila['NombreARL'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
			</div>
            <div class='field'>
				<label>Tipo de Sangre</label>
				<select name='Tipo_Sangre' type='Tipo_Sangre' required value="">
					<option selected disabled>--</option>
					<?php

					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListaTipoSangre = "call recuperarTipoSangre()";

					$resultadoConsultaTipoSangre = mysqli_query($conexion, $consultaListaTipoSangre);

					if ($resultadoConsultaTipoSangre){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaTipoSangre)){
							echo '<option value="'.$fila['Tipo_Sangre'].'">'.$fila['Tipo_Sangre'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
			</div>
            <div class='field'>
				<label>RH</label>
				<select name='rh' type='rh' required value="">
					<option selected disabled>--</option>
					<?php

					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListaRH = "call recuperarRH()";

					$resultadoConsultaRH = mysqli_query($conexion, $consultaListaRH);

					if ($resultadoConsultaRH){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaRH)){
							echo '<option value="'.$fila['Id_Rh'].'">'.$fila['Rh'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>
				</select>
			</div>
			<div class='field'>
				<label>Primer Nombre Acudiente</label>
				<input name= "PrimerNombreAcudiente" type='text' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Segundo Nombre Acudiente</label>
				<input name='SegundoNombreAcudiente' type='name' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Primer Apellido Acudiente</label>
				<input name='PrimerApellidoAcudiente' type='name'minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Segundo Apellido Acudiente</label>
				<input name='SegundoApellidoAcudiente' type='name' minlength="3" maxlength="15" required pattern="[A-Za-z]+" />
			</div>
			<div class='field'>
				<label>Tipo de Documento Acudiente</label>
				<select name='TipoDocumentoAcudiente'  type='TipoDocumentoAcudiente' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoTipoDocumento = "call recuperarTipoDocumento()";

					$resultadoConsultaTipoDocumento = mysqli_query($conexion, $consultaListadoTipoDocumento);

					if ($resultadoConsultaTipoDocumento){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaTipoDocumento)){
							echo '<option value="'.$fila['Nomenclatura'].'">'.$fila['Nomenclatura'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>

				</select>
				</div>
				<div class='field'>
				<label>Numero del Documento Acudiente</label>
				<input name='N_DocumentoAcudiente' type='name' minlength="3" maxlength="15" required pattern="[0-9]+" />
			</div>
				<div class='field'>
				<label>Parentesco</label>
				<select name='parentesco'  type='parentesco' required value="">
					<option selected disabled>--</option>
					
					<?php
					include ("../Login/conexion_bd.php");

					//Recuperar la estructura de laconsulta que esta dentro del 
					//procedimiento almacenado

					$consultaListadoParentesco = "call recuperarParentesco()";

					$resultadoConsultaParentesco = mysqli_query($conexion, $consultaListadoParentesco);

					if ($resultadoConsultaParentesco){
						while ($fila=mysqli_fetch_assoc($resultadoConsultaParentesco)){
							echo '<option value="'.$fila['Id_Parentesco'].'">'.$fila['Parentesco'].'</option>';
						}
					}

					mysqli_close($conexion);

					?>

				</select>
				</div>
			
            <div class='field'>
				<label>Email Acudiente</label>
				<input name='Email' type='email'  />
			</div>
			
			<div class='field'>
				<label>Teléfono Acudiente</label>
				<input name='TelefonoAcudiente' type='tel'minlength="10" maxlength="10" required pattern="[0-9]+" />
			</div>
			
			<div class='gustos'>
				<label>Acepta Politicas internas?</label>
				<div><input name='Politicas' type='radio' />Sí</div>
				<div><input name='Politicas' type='radio' />No</div>
			</div>
			<div class='textBox'>
				<label>Otros datos </label>
				<textarea></textarea>
			</div>
			<div class='submit'>
				<button type="submit" value="Registrar" name="Registrar">
					REGISTRAR
				</button>
			</div>
		</form>

	</main>

<?php
include ("Validar_RegistroEstudiante.php");
?>

</body>

</html>