<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link href="css/bootstrap.css"/>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="images/favicon.png" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
</head>
<body>

	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
  <img src="images/logotenis.png" id="logotipo"/>
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <form class="form-inline my-2 my-lg-0" method="post" action="BuscarController">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="procurar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="procurar">Buscar</button>
    </form>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Calçados</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Roupas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Camisas</a>
          <a class="dropdown-item" href="#">Bermudas</a>
          <a class="dropdown-item" href="#">Calças</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Diversos</a>
        </div>
      </li>
     
      <c:choose>
		<c:when test="${sessao != null}">
		<li class="nav-item">
		<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Olá ${sessao.getNome()}!
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <form action="LogoutController" method="get">
			<a class="dropdown-item" href="LogoutController">Sair</a>
		  </form>
		  <a class="dropdown-item" href="admin.jsp">Administrador</a>
        </div>
      </li>
        </c:when>
		
		<c:otherwise>	
      <li class="nav-item">
    <form method="get" action="LoginController2">
  <div class="form-row align-items-center">
    <div class="col-auto">
      <label class="sr-only" for="inlineFormInput">Senha</label>
     <input type="text" class="form-control" id="inlineFormInputGroup" name="username" placeholder="Username">
    </div>
    <div class="col-auto">
      <label class="sr-only" for="inlineFormInputGroup">Username</label>
      <div class="input-group mb-2 mb-sm-0">
       <input type="password" class="form-control mb-2 mb-sm-0" id="inlineFormInput" name="senha" placeholder="Senha">    
      </div>
    </div>
    <div class="col-auto">
      <button type="submit" class="btn btn-primary">Entrar</button>
    </div>
  </div>
    </form>
      </li> 
      
      <li class="nav-item">
        <a class="nav-link" href="#">Não tem conta? Cadastre-se aqui!</a>
      </li>
      </c:otherwise>
	  </c:choose>  
    </ul>
  </div>
</nav>
<section style="text-align:center;">

<br/><br/>

<h1>Insira seus dados</h1>

<form method="post" action="CadastroController">
		<br/><br/>
		<input type="text" name="nome" placeholder="Nome Completo"/><br/><br/>
		<input type="text" name="endereco" placeholder="Endereço"/><br/><br/>
		<input type="text" name="telefone" placeholder="Telefone"/><br/><br/>
		<input type="text" name="email" placeholder="E-mail"/><br/><br/>
		<input type="text" name="cidade" placeholder="Cidade"/><br/><br/>
		<input type="text" name="estado" placeholder="Estado"/><br/><br/>
		<input type="text" name="username" placeholder="User name"/><br/><br/>
		<input type="text" name="senha" placeholder="Senha"/><br/><br/>		
		<button class="btn btn-primary" type="submit">Cadastrar</button>

</form>

	<br/>
	   <c:if test="${alerta != null}">
		  <h5 style="text-align:center;">${alerta}</h5>
		</c:if>
	
	</section>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>
</html>