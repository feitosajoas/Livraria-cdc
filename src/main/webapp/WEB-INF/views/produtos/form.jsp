<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de Java, Android, iPhone, RUby, PHP e muito mais -
	Casa do C�digo</title>
</head>
<body>
	<form:form action="/casadocodigo/produtos" method="post"
		commandName="produto">


		<!--Campo T�tulo  -->
		<div>
			<label>T�tulo</label> <input type="text" name="titulo">
			<form:errors path="titulo" />
			<!-- Quando ocorrer erro do titulo, exibir! -->
		</div>
		<!--Campo Descri��o  -->
		<div>
			<label>Descri��o</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
			<form:errors path="descricao" />
			<!-- Quando ocorrer erro da descricao, exibir! -->
		</div>
		<!--Campo P�ginas  -->
		<div>
			<label>P�ginas</label> <input type="text" name="paginas">
			<form:errors path="paginas" />
			<!-- Quando ocorrer erro nas paginas, exibir! -->
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco } </label> <input type="text"
					name="precos[${status.index}].valor" /> <input type="hidden"
					name="precos[${status.index}].tipo" value="${tipoPreco }" />

			</div>
		</c:forEach>

		<!-- Bot�o cadastrar -->
		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>