<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">

	<title>Cadastro de Clientes</title>
	
	<?php
		require_once('css.html');
	?>	

</head>
	
	<?php
		require_once('header.html');
	?>

<body>
	
	<div class="cadastro_cliente">
	
	<form class="form-group" method="POST" action="cadastra_cliente_bd.php">
		
		Pessoa: <input type="radio" name="pessoa" value="fisica" checked>Física
				<input type="radio" name="pessoa" value="juridica">Jurídica	
		CPF/CNPJ: <input type="text" name="cpf/cnpj" > 
		Nome: <input  type="text" name="nome">
		Endereço: <input  type="text" name="endereco">
		Número: <input  type="text" name="numero">
		Complemento: <input  type="text" name="complemento">
		Cidade: <input  type="text" name="cidade">
		Bairro: <input  type="text" name="bairro">
		UF: <input  type="text" name="uf">
		CEP: <input  type="text" name="cep">
		E-mail: <input  type="email" name="email">
		Telefone: <input  type="text" name="telefone">
		Status: <input type="radio" name="status" value="ativo" checked>Ativo
				<input type="radio" name="status" value="inativo">Inativo
			
			
				<input type="submit" name="cadastrar" value="Cadastrar">					
	</form>

	</div>
</body>
</html>