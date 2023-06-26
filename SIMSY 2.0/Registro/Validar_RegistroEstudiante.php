<?php

include ("../Login/conexion_bd.php");

if (isset($_POST['Registrar'])) {
    
        $Nom1 = trim($_POST['PrimerNombre']);
        $Nom2 = trim($_POST['SegundoNombre']);
        $Apell1 = trim($_POST['PrimerApellido']);
        $Apell2 = trim($_POST['SegundoApellido']);
        $Tipo_Documento = trim($_POST['TipoDocumento']);
        $N_Doc = trim($_POST['N_Documento']);
        $Edad = trim($_POST['Edad']);
        $Grado = trim($_POST['Grado']);
        $Curso = trim($_POST['Curso']);
        $Direccion = trim($_POST['Direccion']);
        $Localidad = trim($_POST['Localidad']);
        $Barrio = trim($_POST['Barrio']);
        $Ciudad = trim($_POST['Ciudad']);
        $Eps = trim($_POST['Eps']);
        $Arl = trim($_POST['Arl']);
        $TipoSangre = trim($_POST['Tipo_Sangre']);
        $Rh = trim($_POST['rh']);
        $Nom1Acudiente = trim($_POST['PrimerNombreAcudiente']);
        $Nom2Acudiente = trim($_POST['SegundoNombreAcudiente']);
        $Apell1Acudiente = trim($_POST['PrimerApellidoAcudiente']);
        $Apell2Acudiente = trim($_POST['SegundoApellidoAcudiente']);
        $Tipo_DocumentoAcudiente = trim($_POST['TipoDocumentoAcudiente']);
        $N_DocAcudiente = trim($_POST['N_DocumentoAcudiente']);
        $Parentesco = trim($_POST['parentesco']);
        $Email = trim($_POST['Email']);
        $Tel = trim($_POST['TelefonoAcudiente']);
        $Politicas = trim($_POST['Politicas']);
        

        $nom3 = "";
        $documentInt = intval($N_Doc);
        $documentAcudienteInt = intval($N_DocAcudiente);
        $edadInt = intval($Edad);
        $gradoInt = intval($Grado);
        $cursoInt = intval($Curso);
        $localidadInt = intval($Localidad);
        $IdBarrioInt = intval($Barrio);
        $epsInt = intval($Eps);
        $ArlInt = intval($Arl);
        $RhInt = intval($Rh);
        $ciudadInt = intval($Ciudad);
        $parentescoInt = intval($Parentesco);
        $telefonoInt = intval($Tel);
        $idTipoDocAcudiente = intval($Tipo_DocumentoAcudiente);

     //Variable para almacenar la estructura del insert creada en el procedimiento
     //almacenado registrousuario()

     $sqlInsertEstudiante = "call registroEstudiante(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

     //Variable para ir validando la ejecucion del procedimiento almacenado

     $preparacionConsultaEstudiante = mysqli_prepare($conexion, $sqlInsertEstudiante);

     if ($preparacionConsultaEstudiante) {
         mysqli_stmt_bind_param($preparacionConsultaEstudiante, "ssssssiiiisiiiiisisssssiisi", $Nom1, $Nom2, 
         $nom3, $Apell1, $Apell2, $Tipo_Documento, $documentInt, $edadInt, $gradoInt, $cursoInt, $Direccion,
         $localidadInt, $IdBarrioInt, $ciudadInt, $epsInt, $ArlInt, $TipoSangre, $RhInt,
         $Nom1Acudiente, $Nom2Acudiente, $Apell1Acudiente, $Apell2Acudiente, $Tipo_DocumentoAcudiente,
         $documentAcudienteInt, $parentescoInt, $Email, $telefonoInt);

         mysqli_stmt_execute($preparacionConsultaEstudiante);

         if(mysqli_stmt_affected_rows($preparacionConsultaEstudiante)>0){
             ?>
         <h3>Registro exitoso!</h3>
         <?php
         }else {
             ?>
         <h3>Registro Incorrecto!</h3>
         <?php
         }
     }

 }

?>