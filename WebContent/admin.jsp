<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Administrador</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link href="css/bootstrap.css"/>
	<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="images/favicon.png" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>

  <body style="background-color:#f8f9fa;">

   	
			 <div style="text-align:center;margin-top:50px;"> 
			<img src="images/user.png" style="width:100px;"/>	
		  <h4 style="text-align:center;margin-top:20px;">Área do administrador</h4> 
		    </div>   
		    
		<!-- Início do formulário de login -->
		<div class="container" style="background-color:#F8F9FF;width:30%;border-radius:5px;border:1px solid rgba(0,0,0,.1);">  
		<form method="post" action="LoginController2"  style="margin:50px auto;padding:20px;"> 
		  <div style="width:300px;text-align:center;margin:0 auto;">  
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Senha</label>
		     <input type="text" class="form-control" id="inlineFormInputGroup" name="username" placeholder="Username"><br/> 
		    </div>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInputGroup">Username</label>
		      <div class="input-group mb-2 mb-sm-0">
		       <input type="password" class="form-control mb-2 mb-sm-0" id="inlineFormInput" name="senha" placeholder="Senha">    
		      </div>
		    </div>
		    <div class="col-auto" >
		      <button style="margin:20px;" type="submit" class="btn btn-primary">Entrar</button><br/> 
		    </div>
		  </div>
		   <c:if test="${alerta != null}"> 
  		<p class="alerta">${alerta}</p>
   		  </c:if>
		</form>
		</div>
		<!-- Fim do formulário de login -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

  </body>
</html>