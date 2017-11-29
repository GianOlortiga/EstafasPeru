<?php
session_start();
if(isset($_SESSION['id']) and isset($_SESSION['user'])){
	header("Location: panel/index.php");
}else{
	if(isset($_GET['view']) and $_GET['view']=='login'){
		if($_POST){
			if(!empty($_POST['user']) && !empty($_POST['pass'])){
				include("../modulos/conexion.php");
				include("../modulos/login.php");
			}else{
				echo 2;
			}
		}
	}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1"/>
	<title>Administrador Sistema de Denuncias</title>
	<link rel="stylesheet" href="../css/style.css">
</head>
<body id="b-admin">
	<div id="container-admin">
		<p>C-Panel</p>
		<div id="_AJAX_"></div>
		<div id="form-panel">
				<label for="user">Usuario:</label><br>
				<input type="text" name="user" id="user" placeholder="Ingresa tu usuario"><br><br>
				<label for="pass">Password:</label><br>
				<input type="password" name="pass" id="pass" Placeholder="Ingresa tu password"><br><br><br>
				<input type="button" id="send" value="Ingresar">
		</div>
	</div>
	<script>
		window.onload = function(){
			document.getElementById('send').onclick = function(){
				var user, pass, form, connect, result;
				user = document.getElementById('user');
				pass = document.getElementById('pass');
				if(user.value!='' && pass.value!=''){
					form = 'user=' + user.value + '&pass=' + pass.value;
					connect = window.XMLHttpRequest ? new XMLHttpRequest(): new ActiveXObject('Microsoft.XMLHttp');
					connect.onreadystatechange = function(){
						if(connect.readyState==4 && connect.status == 200){
							if(parseInt(connect.responseText)==1){
								result = '<div class="alert alert-success">';
								result +='Bienvenido...';
								result += '</div>';
								document.getElementById('_AJAX_').innerHTML = result;
								location.href="panel/";

							}else{
								result = '<div class="alert alert-danger">';
								result+='<strong>ERROR: </strong>Credenciales Incorrectas';
								result +='</div>';
								user.style.border = "1px solid red";
								pass.style.border = "1px solid red";
								user.value="";
								pass.value="";
								document.getElementById('_AJAX_').innerHTML = result;
							}
						}else if(connect.readyState!=4){
							result = '<div class="alert alert-warning">';
							result += 'Procesando...';
							result+='</div>';
							document.getElementById('_AJAX_').innerHTML = result;
						}
					}
				connect.open('POST','?view=login');
				connect.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				connect.send(form); 
				}else{
					result = '<div class="alert alert-danger">';
					result +='<strong>ERROR:</strong>Debe completar todos los campos';
					result +='</div>';
					user.style.border = "1px solid red";
					pass.style.border = "1px solid red";
					document.getElementById('_AJAX_').innerHTML = result;
				}
			}
		}
	</script>
</body>
</html>
<?}?>