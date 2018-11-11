<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	<!-- JSTL -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de Java, Android, iPhone, RUby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<!-- direciona para /produtos -->
	<form action="/casadocodigo/produtos" method="POST">
		<!--Campo Tìtulo  -->
		<div>
			<label>Título</label> 
			<form:errors path="produto.titulo" />	<!-- Quando ocorrer erro do titulo, exibir! -->
			<input type="text" name="título">
		</div>
		<!--Campo Descrição  -->
		<div>
			<label>Descrição</label>
			<form:errors path="produto.descricao" />	<!-- Quando ocorrer erro da descricao, exibir! -->
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<!--Campo Páginas  -->
		<div>
			<label>Páginas</label> 
			<form:errors path="produto.paginas" />	<!-- Quando ocorrer erro nas paginas, exibir! -->
			<input type="text" name="paginas">
		</div>
		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco } </label> 
				<input type="text" name="precos[${status.index}].valor">
				<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco }">
		
		</div>
		</c:forEach>

		<!-- Botão cadastrar -->
		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>