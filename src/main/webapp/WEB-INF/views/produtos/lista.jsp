<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de Java, Android, iPhone, RUby, PHP e muito mais -
	Casa do C�digo</title>
</head>
<body>

	<h1>Lista de Produtos</h1>
	<!--Tabela com as colunas do produto  -->
	<table>
		<tr>
			<td>T�tulo</td>
			<td>Descri��o</td>
			<td>P�ginas</td>
		</tr>
		<!-- Produto -->
		<c:forEach items="${produtos }" var="produto">
			<tr>
				<!-- Colunas do produto -->
				<td>${produto.titulo}</td>
				<td>${produto.descricao}</td>
				<td>${produto.paginas}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>