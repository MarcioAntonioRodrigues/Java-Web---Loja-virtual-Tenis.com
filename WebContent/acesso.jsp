<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Acesso</title>
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
	<form action="ProdutoController" method="get">
	  <input type="hidden" name="tela" value="cadastro"/>
	    <img style="width:20%;margin-top:100px;" src="images/logotenis.png"/><br/><br/>	
		<h1 style="font-size:50px;color:white;text-shadow:1px 1px 10px black;">Cadastre o produto</h1><br/><br/>
		<h3 style="color:white;text-shadow:1px 1px 10px black;">Selecione a categoria
		  <select style="width:150px;" name="categoria">
		   <option value="Tênis">Tênis</option>
		   <option value="Casaco">Casaco</option>
		   <option value="Calça">Calça</option>
		   <option value="Blusa">Blusa</option>
		  </select>
		</h3>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Imagem do produto" name="imagem"/>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Nome do produto"  name="nome" /><br/><br/>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Descrição do produto" name="descricao" />
		<input  type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Preço do produto" name="preco" /><br/><br/>
		<input style="border-radius:10px;font-size:15px;padding:5px;margin:10px;" type="submit" value="Cadastrar"/>	
			</form>
			
			<br/>
			
			<h3 style="font-size:25px;color:yellow;font-weight:bold;text-shadow:1px 1px 1px black;">
			  <c:if test="${alerta!=null}">				
				<c:out value="${alerta}"></c:out>     
			  </c:if>
			</h3>
			 <br/>
									   
				<form action="paineladministrador.jsp">
			     <input type="submit" value="Voltar" style="border-radius:10px;font-size:15px;margin:15px;padding:5px"/>
				</form>
	          </div>
	          
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
			</body>
          </html>