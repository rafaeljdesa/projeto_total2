<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Projeto Total 2.0</title>

	<?php
		require_once('view/css.html');
	?>

</head>
<body>
	<div id="container">
		
		<?php
			require_once('view/header.html');
		?>

		<div id="main" >
			<h1>Selecione a opção desejada:</h1>
			<div id="menu">
				<button id="btn-cad-cli" class="btn-cad-cli" title="Cadastro de clientes" ></button>
				<button id="btn-cad-func" class="btn-cad-func" title="Consulta de funcionários" ></button>
				<button id="btn-cad-estq" class="btn-cad-estq" title="Consulta de estoque" ></button>
			</div>
		</div>

	</div>

	<?php
		require_once('view/js.html');
	?>

</body>
</html>