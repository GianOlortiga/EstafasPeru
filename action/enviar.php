<?php 
$titulo = mysql_real_escape_string(stripslashes(htmlentities($_POST['titulo'])));
$contenido = mysql_real_escape_string(stripslashes(htmlentities($_POST['contenido'])));
$ciudad = mysql_real_escape_string(stripslashes($_POST['q']));
$nombre = mysql_real_escape_string(stripslashes(htmlentities($_POST['nombre'])));
if(isset($_POST['g-recaptcha-response']) && $_POST['g-recaptcha-response']){
		if(empty($titulo) || empty($contenido) || empty($ciudad) || empty($nombre)){
			header("Location: ../publicar.php?es=error");
		}else{
			include("../modulos/conexion.php");
			$sql=mysql_query("INSERT INTO publicaciones(titulo,nombre,mensaje,ciudad_id,fecha) VALUES('$titulo','$nombre','$contenido','$ciudad',now())");
			header("Location: ../publicar.php?es=success");
		}
	
}else{
	header("Location: ../publicar.php?es=error");

}
 ?>