<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="br.com.alura.gerenciador.modelo.Empresa" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/removeEmpresa"  var="linkRemoveEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresas Cadstradas</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&family=Roboto:wght@300&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/4c221199e8.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<header>
		<h1>Empresa(s) cadastrada(s) &nbsp;<i class="fa-solid fa-face-laugh-wink"></i></h1>
	</header>
	
	<main>
		
		<c:if test="${ not empty empresa }">
			<h2 class="frase-alerta">Empresa: <u> ${ empresa } </u>, cadastrada com sucesso!</h2>
		</c:if>
		
		<h3>Empresas Cadastradas!</h3>
		
		<ul>
			<c:forEach items="${ empresas }" var="empresa">
				<li>${ empresa.nome } &nbsp;&nbsp;
				 <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
				 <a href="/gerenciador/mostraEmpresa?id=${ empresa.id }">Atualizar dados</a>
				  <a href="/gerenciador/removeEmpresa?id=${ empresa.id }">Remover</a></li>
			</c:forEach>
		</ul>
		
		
	</main>

</body>
</html>