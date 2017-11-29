<?php 
session_start();
if(!isset($_SESSION['id']) and !isset($_SESSION['user'])){
	header("Location: ../");
}else{?>
<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("../../modulos/conexion.php") ?>
	<?php include("../../estructura/head-admin.php") ?>
</head>
<body>
	<?php include("../../estructura/nav.php");
	if(isset($_GET['e']) && $_GET['e']=='success'){?>
		<div id="success">
			<p style="text-align:center">- - - El proceso se ha realizado con éxito- - -</p>
		</div>
	<?}else if(isset($_GET['e']) && $_GET['e']=='e-1'){?>
		<div id="error">
			<p style="text-align:center">- - - Ocurrio un error al realizar el proceso. Intentelo nuevamente - - -</p>
		</div>
	<?}?>
	<section id="marco-admin">
		<section id="panel">
			<p>Bienvenido: <a href=""><?php echo $_SESSION['user'] ?></a></p>
			<p>Este es el panel de administración. Aquí podrá administrar las denuncias.</p>
			- - - <a href="logout.php" style="background:brown">Cerrar Sesión</a> - - -
		</section>
		<section id="denuncias">
			<h3>Publicaciones</h3><hr>
			<section id="publicaciones">
			<?php
			$registros='20';
			$pag = $_GET['pag'];
			if (!$pag){
				$inicio = 0;
				$pag = 1;
			}else{
				$inicio = ($pag -1) * $registros;
			} 
			$sql_post = mysql_query("SELECT * FROM publicaciones ORDER BY id DESC LIMIT $inicio, $registros");
			$num = mysql_num_rows($sql_post);

			if($num>0){
				while($datos=mysql_fetch_array($sql_post)){
					$estado=$datos['estado'];
					?>
					<a href="publicacion.php?id=<?php echo $datos['id']?>">
					<article>
						<img src="../../img/avat.jpg" alt="Denuncia">
						<p><?php echo html_entity_decode($datos['titulo'])?><br><br><br>
							--- Publicado por: <strong><?php echo $datos['nombre'] ?> </strong> | Fecha: <strong><?php echo $datos['fecha'] ?></strong> --- <br><br><br>
							<?php 
							if($estado==1){?>
								<span style="Background:green">Aprobado</span>
							<?}else{?>
								<span>Pendiente</span>
							<?}?>
						</p>
					</article>
					</a>
				<?}?>
				<br><br>
				<?
				$entradas=mysql_query("SELECT * FROM publicaciones WHERE estado=1");
				$total_registros=mysql_num_rows($entradas);
				$total_paginas=ceil($total_registros/$registros);

				?>
				<ul>
					<?
					if($total_registros>$registros){
						if (($pag-1)>0){?>
							<li><a href="index.php?pag=<? echo $pag - 1 ?>"><<</a></li>
						<?}else{?>
							<li style="color:grey"><<</li>
						<?}
					}
					//Numero de paginas a mostrar
					$num_pag=5;
					//Limitamos las paginas mostradas
					$pagina_intervalo=ceil($num_pag/2)-1;

					//caculamos desde que numero de pagina se mostrara
					$pagina_desde=$pag-$pagina_intervalo;
					$pagina_hasta=$pag+$pagina_intervalo;

					//Verificar que pagina_desde sea negativo

					if ($pagina_desde<1){//Le sumamos la cantidad sobrante para mantener el numero de enlaces mostrados 
						$pagina_hasta-=($pagina_desde-1); 
						$pagina_desde=1;
					}
					// Verificar que pagina_hasta no sea mayor que paginas_totales 
					if($pagina_hasta>$total_paginas){
						$pagina_desde-=($pagina_hasta-$total_paginas);
						$pagina_hasta=$total_paginas;
						if($pagina_desde<1){
							$pagina_desde=1;
						}
					}

					for ($i=$pagina_desde; $i<=$pagina_hasta; $i++){
						if ($pag==$i){?>
							<li style="color:grey"><span><?php echo $pag ?></span></li>
						<?}else{?>
							<li><a href='index.php?pag=<?php echo $i ?>'><?php echo $i ?></a></li>
						<?}
					}

					if(($pag+1)<=$total_paginas){?>
						<li><a href="index.php?pag=<?php echo $pag+1 ?>">>></a></li>
					<?}else{?>
						<li style="color:grey">>></li>
					<?}?>
				</ul>
			<?}else{?>
			<p>Aún no se han publicados denuncias. Sé el primero click <a href="publicar.php">aquí</a></p>
			<?}?>
			</section>
		</section>
	</section>
	<?php include("../../estructura/footer.php") ?>
</body>
</html>
<?}?>