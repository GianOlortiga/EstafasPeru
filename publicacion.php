<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("modulos/conexion.php") ?>
	<?php include("estructura/head.php") ?>
</head>
<body>
	<?php include("estructura/nav.php") ?>
	<?php include("estructura/buscador.php") ?>
	<section id="contenido">
		<?php 
		if(isset($_GET['id']) and is_numeric($_GET['id']) and $_GET['pag'] >= 0 ){
			$id= intval($_GET['id']);
			$sql_post = mysql_query("SELECT * FROM publicaciones WHERE id=$id");
			$datos = mysql_fetch_array($sql_post);
			$ciudad_id = $datos['ciudad_id'];
			$titulo = $datos['titulo'];
			$contenido = $datos['mensaje'];
			$estado = $datos['estado'];
			$sql_ciudad = mysql_query("SELECT * FROM ciudades WHERE id=$ciudad_id");
			$ciudad = mysql_fetch_array($sql_ciudad);

			if($estado==1){
		?>
			<span>- - - Denuncia en ciudad de: <a href="buscar.php?q=<?php echo utf8_encode($ciudad['id']) ?>"><?php echo utf8_encode($ciudad['ciudad'])?></a> - - -</span>
			<section id="publicacion">
				<article>
					<h1><?php echo html_entity_decode($titulo)?></h1><hr>
					<p><?php echo html_entity_decode($contenido) ?></p><hr>
					<p>Publicado por: <strong><?php echo $datos['nombre'] ?></strong> | Fecha: <strong><?php echo $datos['fecha'] ?></strong></p>
				</article>
			</section>
			<?}else{?>
			<section id="publicacion">
				<p>--- No se ha encontrado esta denuncia ---</p>
			</section>
			<br><br>
			<?}
		}else{?>
			<section id="publicacion">
				<p>--- No se ha encontrado esta denuncia ---</p>
			</section>
			<br><br>
		<?}?>
		<br><br>
		<span>- - - Regresar a búsqueda en ciudad de: <a href="buscar.php?q=<?php echo utf8_encode($ciudad['id']) ?>"><?php echo utf8_encode($ciudad['ciudad'])?></a> |<a href="index.php" style="margin-left:10px">¿Ir a página principal?</a> - - -</span><br><br>
		<?php include("estructura/aside2.php") ?>
	</section>
	<?php include("estructura/footer.php") ?>
</body>
</html>