<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<title>Kalkulator</title>
		<style>
			body {
				background-color: rgb(39, 39, 39);
			}
			.heading {
				font-family: 'Source Code Pro', monospace;
				font-size: 300%;
				color: rgb(13, 176, 240);;
				text-align: center;
			}
			.calculator {
				font-family: 'Source Code Pro', monospace;
				font-size: 110%;
				color: white;
				text-align: center;
				margin-top: 10vh;
			}
			input {
				font-family: 'Source Code Pro', monospace;
				color: rgb(248, 255, 147);
				text-align: center;
				font-weight: bold; 
				border-left: #080510;
				border-right: #080510;
				border-style: groove;
				background-color: #080510; 
				font-size: 110%;
			}
			select {
				font-family: 'Source Code Pro', monospace;
				color: white;
				
				text-align: center;
				font-weight: bold; 
				border-left: #080510;
				border-right: #080510;
				border-style: groove;
				background-color: #080510; 
				font-size: 100%;
			}
			option {
				
				color: white;
				text-align: center;
				font-weight: bold; 
				font-family: 'Source Code Pro', monospace;
				border-left: #080510;
				border-right: #080510;
				border-style: groove;
				background-color: black; 
				font-size: 95%;
			}
			.footer {
				left: 0px;
				right: 0px;
				bottom: 4px;
				position: fixed;
				text-align: center;
				color: rgb(95, 255, 220);
				font-family: 'Bellota Text', cursive;
				font-size: 120%;
			}
			a {
				font-family: 'Source Code Pro', monospace;
				text-decoration: none;
				color: white;
			}
			a:hover {
				color: red;
			}
			input[type=number]::-webkit-inner-spin-button, 
			input[type=number]::-webkit-outer-spin-button { 
				-webkit-appearance: none; 
				margin: 0; 
			}
			}
		</style>
	</head>
	<body>
		<div class="heading">
			<font>Kalkulator Sederhana</font>
		</div>
		<div class="calculator">
			<form action="" method="POST">
				<input type="number" name="first_input" placeholder="Masukkan Angka Pertama" size="20" />&nbsp;&nbsp;&nbsp;
				<select name="function">
					<option>Tambah</option>
					<option>Kurang</option>
					<option>Kali</option>
					<option>Bagi</option>
					<option>Kuadrat</option>
					<option>Akar Pangkat</option>
				<input type="number" style="margin-left: 40px; " name="second_input" placeholder="  Masukkan Angka Kedua" size="20" />&nbsp;&nbsp;&nbsp;	
				</select><br><br><br><input type="reset" style="color: rgb(255, 95, 95);margin-right: 30px;" value="Reset">
				<input type="submit" style="color: rgb(147, 255, 162);" name="submit" value="Submit" />
				
			</form>
			<?php
				if (isset($_POST['submit'])) {
					$input_1 = htmlspecialchars($_POST['first_input']);
					$input_2 = htmlspecialchars($_POST['second_input']);
					$operator = $_POST['function'];

					if ($input_1 == null) {
						die("<br><br>Please Enter The First Number ^_^");
					}

					
					switch ($operator) {
						case 'Tambah':
							$adding = $input_1 + $input_2;
							echo "<br><br>Result:<br> " . $adding;
						break;

						case 'Kurang':
							$subtracting = $input_1 - $input_2;
							echo "<br><br>Result:<br> " . $subtracting;
						break;

						case 'Kali':
							$multiply = $input_1 * $input_2;
							echo "<br><br>Result:<br>" . $multiply;
						break;

						case 'Bagi':
							$divide = $input_1 / $input_2;
							echo "<br><br>Result:<br>" . $divide;
						break;

						case 'Kuadrat':
							$square = $input_1 * $input_1;
							die("<br><br>Result:<br>" . $square);
						break;

						case 'Akar pangkat':
							$square_root = sqrt($input_1);
							die("<br><br>Result:<br>" . $square_root);
						break;
					}
				}
			?>
		</div>
		<div class="footer" >
			<footer>
				<hr>
					<font>Web by :
						<a href="https://www.instagram.com/dzkrihsyam/ " target="_blank">M. Dzikri Hisyam Ilyasa</a>
					</font>
				<hr>
			</footer>
		</div>
	</body>
</html>