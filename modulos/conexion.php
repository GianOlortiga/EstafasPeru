<?php 

$server = "localhost";
$usuario = "root";
$pass = "computo";
$db = "estafasperu";


$con = mysql_connect($server,$usuario,$pass);

if(!$con){
	echo mysql_error();
}else{
	mysql_select_db($db,$con) or die(mysql_error());
}
 ?>