<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">

	<title>Cadastro de Clientes</title>
	
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	
</head>
	
	

<body>
	<div id="container">
		
		<?php
			require_once('header.php');
		?>
	<a id="voltar" href="../index.php"> << Voltar</a>

		<div class="cadastro_cliente">
		
			<form class="form" method="POST" action="cadastra_cliente_bd.php">
				
				<div class="input-radio">	
					<p id="pessoa">Pessoa: <input type="radio" id="pessoa-fisica" name="pessoa" value="fisica" checked>Física
									<input type="radio" id="pessoa-juridica" name="pessoa" value="juridica">Jurídica</p>
					<p id="status">Status: 	<input type="radio" name="status" value="ativo" checked>Ativo
									<input type="radio" name="status" value="inativo">Inativo</p><br><br>
				</div>
				<div class="input-text">	
					<p>CPF/CNPJ:</p> <input type="text" id="cpf_cnpj" name="cpf/cnpj" > 
					<p>Nome:</p> <input  type="text" name="nome">
					<p>Endereço:</p> <input  type="text" name="endereco">
					<p>Número:</p> <input  type="text" name="numero">
					<p>Complemento:</p> <input  type="text" name="complemento">
					<p>Cidade:</p> <input  type="text" name="cidade">
					<p>Bairro:</p> <input  type="text" name="bairro">
					<p>UF:</p> <input  type="text" name="uf">
					<p>CEP:</p> <input  type="text" name="cep">
					<p>E-mail:</p> <input  type="email" name="email">
					<p>Telefone:</p> <input  type="text" name="telefone">
					
				</div>	

				<div class="btn-cad">
					<input type="submit" name="cadastrar" value="Cadastrar">
				</div>
		</form>

		</div>
	</div>
	<?php
		require_once('js.php');
	?>
</body>
</html>