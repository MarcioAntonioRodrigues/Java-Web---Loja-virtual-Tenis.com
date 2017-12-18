<%@page import="negocio.Produto"%>
<%@page import="negocio.Carrinho"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<title>Carrinho de compras</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link href="css/bootstrap.css"/>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="images/favicon.png" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
</head>
<body>

<!-- Início do Menu -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="CategoriaController">
	<img src="images/logotenis.png" id="logotipo"/>
	</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <form class="form-inline my-2 my-lg-0" method="post" action="BuscarController">
      <input style="width: 500px;" class="form-control mr-sm-2" type="search" aria-label="Search" name="procurar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="procurar">Buscar</button>
    </form>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     
      <c:choose>
		<c:when test="${sessao != null}">
		<li class="nav-item">
		<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Olá ${sessao.getNome()}
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <form action="LogoutController" method="get">
			<a class="dropdown-item" href="LogoutController">Sair</a>
		  </form>
		  <a class="dropdown-item" href="admin.jsp">Administrador</a>
        </div>
      </li>
      <li class="nav-item">
       <img src="images/carrinho.png" style="width:40px;"/> 
      </li>
      <li class="nav-item">
       <p id="carrinho">${mostraQuant}</p>   
      </li>
        </c:when> 
		
		<c:otherwise>	
      <li class="nav-item">
         <a class="nav-link" href="login.jsp">Entrar</a>
      </li> 
      
      <li class="nav-item">
        <a class="nav-link" href="cadastro.jsp">Cadastre-se</a>
      </li>
      </c:otherwise>
	  </c:choose>  
    </ul>
  </div>
</nav>
<!-- Fim do Menu -->
			
		<table border="1" style="text-align:center;margin: 10px auto;">
		<tr>
		<th class="alert alert-info" role="alert" style="text-align:center;">Produtos</th>
		<th class="alert alert-info" role="alert" style="text-align:center;">Nome</th>
		<th class="alert alert-info" role="alert" style="text-align:center;">Descrição</th>
		<th class="alert alert-info" role="alert" style="text-align:center;">Preço</th>
		</tr>
		
		<c:forEach var="compras" items="${listaProdutos}">	
 		 <form action="CarrinhoController" method="get">
		  <input type="hidden" name="tela" value="excluir" />
		   <tr style="border: 1px solid #bee5eb;">
			<td style="padding:10px;"><img class="card-img-top" style="width:100px;" src="${compras.getImagem()}" alt="Card image cap"> 
			  <button class="btn btn-primary" type="submit">Excluir do carrinho</button>
			  </td>		
			<td style="padding:10px;"><h4 class="card-title">${compras.getNome()}</h4></td>
			<td style="padding:10px;"><h4 class="card-title">${compras.getDescricao()}</h4></td> 
			<td style="padding:10px;"><h4 class="card-title">R$ ${compras.getPreco()}</h4></td>
			</tr>		  
		    <input type="hidden" name="produto" value="${compras.getCodproduto()}"/> 
		 </form>
		</c:forEach>
		<tr style="border: 1px solid #bee5eb;">
		<td style="padding:10px;"><h4 style="text-align:center">Valor total R$ ${total}</h4></td>
		 </tr>
		  </table>
	
		<div style="clear:both;float:left;margin:10px auto;" class="container col-md-12">
		<div style="float:right;margin-right: 45%;">
	  <form action="CategoriaController" method="get">
	 <button class="btn btn-primary" type="submit">Continuar comprando</button>		
	  </form>
	     </div>

	<div style="float:right;margin-right: 5%;">
	  <form action="CarrinhoController" method="get">
	    <input type="hidden" name="sessao" value="${sessao.getUserName()}"/> 
	    <input type="hidden" name="tela" value="comprar" />
		<button class="btn btn-primary" type="submit">Concluir compra</button>
	  </form>
	  </div>
	</div>	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
  </body>
</html>