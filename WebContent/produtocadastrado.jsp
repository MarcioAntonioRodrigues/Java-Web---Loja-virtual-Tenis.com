<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produtos cadastrados</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background-image:url(https://www.desktopbackground.org/download/1440x900/2015/12/12/1056475_nike-basketball-shoes-wallpapers-hd-08-hd-desktop-wallpapers_1920x1080_h.jpg)">

<div id="estilo">

	<form action="ProdutoController" method="post">
	  <input type="hidden" name="tela" value="acesso"/>		
	  <input type="submit" value="Cadastre novo produto"/><br/><br/>
	</form>
			
		<h1 style="font-size:30px;">Produto cadastrado com sucesso!</h1>
		  <c:forEach var="produtos" items="${dados}">
			<div style=" margin:10px;text-align:center;color:white;text-shadow:1px 1px 1px black;font-size:20px;">
			${produtos}	
			</div>	
		   <h1 style="clear:both; text-align:center;font-size:20px;text-shadow:1px 1px 1px black;">
		  <a style="color:white" href="CategoriaController">Ir para a loja</a></h1>
		</c:forEach>
	   </div>
		
	<br/>
   <br/>
	
 </body>
</html>