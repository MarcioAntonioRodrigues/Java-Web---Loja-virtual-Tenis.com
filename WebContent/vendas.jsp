<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendas realizadas</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
 </head>
  <body>

	<h1 style="text-align:center;margin-top:30px;font-size:20px;">Vendas realizadas</h1>
	
	  <c:forEach var="historico" items="${historicoCompras}">	  
	   <c:forEach var="nome" items="${historico.getProduto()}">
	  	<div class="vitrine">
	  	<p><strong>Usuario:</strong> ${historico.getUsuario().getNome()}</p>
	  	<p><strong>Produto:</strong> ${nome.getNome()}</p>
	  	<p><strong>Preço:</strong> ${nome.getPreco()}</p>
	  	<img style="width:300px;" src=" ${nome.getImagem()}"/>
	  	</div>
	   </c:forEach>
	  </c:forEach>
	  
	  <h3 class="buttonLink">
	  <a href="CategoriaController">
	  Ir para a loja</a></h3>

 </body>
</html>