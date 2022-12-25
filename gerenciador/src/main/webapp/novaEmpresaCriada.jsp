<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa Cadstrada</title>
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
			<h2>Empresa: <u> ${ empresa } </u>, cadastrada com sucesso!</h2>
		</c:if>
		
		<c:if test="${ empty empresa }">
			<h2>Nenhuma empresa cadastrada!</h2>
		</c:if>
	</main>

</body>
</html>