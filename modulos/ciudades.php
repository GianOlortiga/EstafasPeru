			<?php 
			$sql = mysql_query("SELECT * FROM ciudades ORDER BY ciudad ASC");
			?>
			<select name="q" id="ciudad" required>
				<option value="" selected>-- Seleccione su Ciudad --</option>
				<?php 
				while($dato = mysql_fetch_array($sql)){?>
				<option value="<?php echo $dato['id'] ?>"><?php echo utf8_encode($dato['ciudad']) ?></option>
				<?}?>
			</select>