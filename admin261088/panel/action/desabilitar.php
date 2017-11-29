<?php

if(isset($_POST['desactivar']) && is_numeric($_POST['desactivar']) && $_POST['desactivar']>0){
	$id=mysql_real_escape_string(intval($_POST['desactivar']));
	include("../../../modulos/conexion.php");
	mysql_query("UPDATE publicaciones SET estado=0 WHERE id=$id");
	header("Location: ../index.php?e=success");
}else{
	header("Location: ../index.php?e=e-1");
}
?>