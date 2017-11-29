<?php 
session_start();
if(!isset($_SESSION['id']) and !isset($_SESSION['user'])){
	header("Location: ../");
}else{
	if(!isset($_GET['id']) and !is_numeric($_GET['id']) and $_GET['id']<0){
		header("Location: ../");
	}else{
		$id=intval($_GET['id']);
	}

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("../../modulos/conexion.php") ?>
	<?php include("../../estructura/head-admin.php") ?>
</head>
<body>
	<?php include("../../estructura/nav.php") ?>
	<section id="marco-admin">
		<section id="panel">
			<p>Bienvenido: <a href=""><?php echo $_SESSION['user'] ?></a></p>
			<p>Este es el panel de administración. Aquí podrá administrar las denuncias.</p>
			- - - <a href="logout.php" style="background:brown">Cerrar Sesión</a> - - -
		</section>
		<section id="denuncias">
			<h3>Publicaciones</h3><hr>
			<section id="contenido" style="width:100%">
				<?php
					$sql_post = mysql_query("SELECT * FROM publicaciones WHERE id=$id");
					$datos = mysql_fetch_array($sql_post);
					$ciudad_id = $datos['ciudad_id'];
					$titulo = $datos['titulo'];
					$contenido = $datos['mensaje'];
					$estado = $datos['estado'];
					$sql_ciudad = mysql_query("SELECT * FROM ciudades WHERE id=$ciudad_id");
					$ciudad = mysql_fetch_array($sql_ciudad);

				?>
					<span>- - - Denuncia en ciudad de: <a href="buscar.php?q=<?php echo utf8_encode($ciudad['id']) ?>"><?php echo utf8_encode($ciudad['ciudad'])?></a> - - -</span>
					<section id="publicacion">
						<article>
							<h1><?php echo html_entity_decode($titulo)?></h1><hr>
							<p><?php echo html_entity_decode($contenido) ?></p><hr>
							<p>Publicado por: <strong><?php echo $datos['nombre'] ?></strong> | Fecha: <strong><?php $datos['fecha'] ?></strong></p>
							<p>Estado: <?php 
							if($estado==1){?>
								<span style="Background:green">Aprobado</span></p>
								<br>
								<form action="action/desabilitar.php" method="POST">
									<input type="hidden" name="desactivar" value="<?php echo $datos['id'] ?>">
									<input type="submit" value="Desabilitar">
								</form>
							<?}else{?>
								<span>Pendiente</span></p>
								<br>
								<form action="action/aprobar.php" method="POST">
									<input type="hidden" name="aprobar" value="<?php echo $datos['id'] ?>">
									<input type="submit" value="Aprobar">
								</form>
							<?}?>
						<form action="action/eliminar.php" method="POST">
							<input type="hidden" name="eliminar" value="<?php echo $datos['id'] ?>">
							<input type="submit" value="Eliminar">
						</form>
						<form>
							<input type="button" value="Regresar" onclick="location.href='index.php'">
						</form>
						</article>
					</section>
			</section>
		</section>
	</section>
	<?php include("../../estructura/footer.php") ?>
</body>
</html>
<?}?>