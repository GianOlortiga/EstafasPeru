<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("estructura/head-publicar.php") ?>
</head>
<body>
	<?php include("estructura/nav.php") ?>
	<?php
	if(isset($_GET['es']) && $_GET['es']=='success'){?>
		<div id="success">
			<p>- !Felicidades!. Su mensaje se ha sido enviado con exito, será revisado para su breve publicación. Gracias por usar el servicio. <small><a href="index">¿Regresar a página principal?</a></small></p>
		</div>
	<?}else if(isset($_GET['es']) && $_GET['es']=='error'){?>
		<div id="error">
			<p>- ERROR: Debe de completar todos los campos :(</p>
		</div>
	<?}?>
	<div id="form-publicar">
		<h2>Publica fácil | Llena sólo estos campos</h2>
		<form action="action/enviar.php" name="form1" method="POST">
			<label for="titulo">Titulo:</label><br>
			<input type="text" name="titulo" id="titulo" placeholder="Ingresa un titulo" required><span class="sms" id="sms1"></span><br><br>
			<label for="contenido">Contenido:</label><br>
			<textarea name="contenido" id="contenido"></textarea><br><br>
			<label for="ciudad">Ciudad: </label>
			<?php include("modulos/conexion.php") ?>
			<?php include("modulos/ciudades.php") ?>
			<span class="sms" id="sms2"></span><br><br>
			<label for="nombre">Tu Nombre o pseudonimo: </label>
			<input type="text" name="nombre" id="nombre" style="width:250px" required><span class="sms" id="sms3"></span><br><br><br>
			<label>Cuadro de Verificación:</label><br>
			<div class="g-recaptcha" data-sitekey="6Lc6nBMTAAAAAGYVu2nUUbQsqg0bHD08WfmIOV6Y"></div><br><br>
			<input type="submit" value="Publicar" id="enviar">
		</form>
	</div><br>
	<a href="index.php" style="margin:30px">Ir a página principal</a><br>
	<?php include("estructura/footer.php") ?>
</body>
</html>