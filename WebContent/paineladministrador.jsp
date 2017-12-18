<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Painel de controle</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link href="css/bootstrap.css"/>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="images/favicon.png" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body style="background-color:#f8f9fa;">

 <div style="text-align:center;">
   <img style="width:30%;margin-top:100px;" src="images/logotenis.png"/>
	
	<form action="acesso.jsp">
	 <button type="submit" class="btn btn-primary">Cadastrar produto</button><br/><br/>
	 </form>
	
	<form method="post" action="ProdutoController">
	 <input type="hidden" name="tela" value="excluirproduto"/>
	 <button type="submit" class="btn btn-primary">Excluir produto</button><br/><br/>
	</form>
	
   <form action="CarrinhoController" method="post">
	<input type="hidden" name="tela" value="vendas"/>
   	<button type="submit" class="btn btn-primary">Visualizar vendas</button><br/><br/>
   </form>
	
	<form action="CategoriaController">
	 <button type="submit" class="btn btn-primary">Ir para a loja</button><br/><br/>
	</form>	
   </div>
   
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

 </body>
</html>