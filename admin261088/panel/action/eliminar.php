<?php

if(isset($_POST['eliminar']) && is_numeric($_POST['eliminar']) && $_POST['eliminar']>0){
	$id=mysql_real_escape_string(intval($_POST['eliminar']));
	include("../../../modulos/conexion.php");
	mysql_query("DELETE FROM publicaciones WHERE id=$id");
	header("Location: ../index.php?e=success");
}else{
	header("Location: ../index.php?e=e-1");
}
?>