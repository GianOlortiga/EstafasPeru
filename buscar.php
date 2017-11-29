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
		<section id="publicaciones">
			<?php 
			if(isset($_GET['q']) && is_numeric($_GET['q']) && $_GET['q']>=1){
				$registros='20';
				$pag = $_GET['pag'];
				if (!$pag){
					$inicio = 0;
					$pag = 1;
				}else{
					$inicio = ($pag -1) * $registros;
				}
				$q = intval($_GET['q']);
				$sql = mysql_query("SELECT * FROM publicaciones WHERE ciudad_id=$q AND estado=1 ORDER BY id DESC LIMIT $inicio, $registros");
				$res=mysql_num_rows($sql);
				$sql_c = mysql_query("SELECT * FROM ciudades WHERE id=$q");
				$ciudad = mysql_fetch_array($sql_c);
				
				if($res>0){?>
					<p><?php echo $res ?> resultado(s) de denuncias en la ciudad de: <a href="buscar.php?q=<?php echo $ciudad['id'] ?>"style="margin-right:10px"><?php echo $ciudad['ciudad'] ?></a> | <a href="index.php" style="margin-left:10px">¿Ir a página principal?</a></p><br>
					<?while ($datos = mysql_fetch_array($sql)) {?>
						<a href="publicacion.php?id=<?php echo $datos['id'] ?>">
						<article>
							<img src="img/avat.jpg" alt="Denuncia">
							<p><?php echo html_entity_decode($datos['titulo'])?><br><br><br>
							--- Publicado por: <strong><?php echo $datos['nombre'] ?> </strong> | Fecha: <strong><?php echo $datos['fecha'] ?></strong> ---</p>
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
								<li><a href="buscar.php?q=<?php echo$q ?>&pag=<? echo $pag - 1 ?>"><<</a></li>
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
								<li><a href='buscar.php?q=<?php echo$q ?>&pag=<?php echo $i ?>'><?php echo $i ?></a></li>
							<?}
						}

						if(($pag+1)<=$total_paginas){?>
							<li><a href="buscar.php?q=<?php echo$q ?>&pag=<?php echo $pag+1 ?>">>></a></li>
						<?}else{?>
							<li style="color:grey">>></li>
						<?}?>
					</ul>
				<?}else{?>
					<p><?php echo $res ?> resultado(s) de denuncias en la ciudad de: <a href="buscar.php?q=<?php echo $ciudad['id'] ?>"><?php echo $ciudad['ciudad'] ?></a>.</p>
					<p>--- Aún no se han publicado denuncias para esta ciudad. Puedes publicar tu denuncia haciendo click <a href="publicar.php">aquí</a>. ---</p><br>
				<?}
			}else{?>
				<p>--- No existen resultados para esta búsqueda ---</p>
			<?}?>
		</section>
		<?php include("estructura/aside.php") ?>
	</section>
	<br><a href="index.php" style="margin:30px">Ir a página principal</a><br>
	<?php include("estructura/footer.php") ?>
</body>
</html>