<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa"  var="linkServeletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Empresa</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&family=Roboto:wght@300&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/4c221199e8.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<header>
		<h1>Seja bem-vindo(a) &nbsp;<i class="fa-solid fa-face-laugh-wink"></i></h1>
	</header>
	
	<main>
	 	
	 	<h3>Atualizando cadastro</h3>
	 	
		<form action="${ linkServeletNovaEmpresa }" method="post">
			<h2>Nome da empresa&nbsp; <input type="text" name="nome" value="${ empresa.nome }">
			&nbsp;Data de abertura: <input type="text" name="data" value="
			 <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>" />&nbsp;
			 <input type="text" name="id" value="${empresa.id}" hidden="id">
			<input type="submit"></h2>
			</h2>
		</form>
	</main>

</body>
</html>