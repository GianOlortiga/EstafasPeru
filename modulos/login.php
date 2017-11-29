<?php 
			$user = mysql_real_escape_string(stripslashes(htmlentities($_POST['user'])));
			$pas = mysql_real_escape_string(md5($_POST['pass']));

			$sql = mysql_query("SELECT * FROM users WHERE user='$user' AND pass='$pas'");

			$num= mysql_num_rows($sql);

			if($num>0){
				$datos = mysql_fetch_array($sql);

				$_SESSION['id'] = $datos['id'];
				$_SESSION['user'] = $datos['user'];
				$_SESSION['pass'] = $datos['pass'];

				echo 1;
			}else{
				echo 2;
			}
?>