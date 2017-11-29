<?php

if(isset($_POST['aprobar']) && is_numeric($_POST['aprobar']) && $_POST['aprobar']>0){
	$id=mysql_real_escape_string(intval($_POST['aprobar']));
	include("../../../modulos/conexion.php");
	mysql_query("UPDATE publicaciones SET estado=1 WHERE id=$id");
	header("Location: ../index.php?e=success");
}else{
	header("Location: ../index.php?e=e-1");
}
?>