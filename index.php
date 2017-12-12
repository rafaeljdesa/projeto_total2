<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Projeto Total 2.0</title>

	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<div id="container">
		
		<?php
			require_once('view/header.php');
		?>

		<div id="main" >
			<h1>Selecione a opção desejada:</h1>
			<div id="menu">
				<button id="btn-cad-cli" class="btn" title="Cadastro de clientes" ></button>
				<button id="btn-cad-func" class="btn" title="Consulta de funcionários" ></button>
				<button id="btn-cad-estq" class="btn" title="Consulta de estoque" ></button>
			</div>
		</div>

	</div>

	<?php
		require_once('view/js.php');
	?>

</body>
</html>