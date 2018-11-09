<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de Java, Android, iPhone, RUby, PHP e muito mais - Casa do Código</title>
</head>
<body>
	<!-- direciona para /produtos -->
	<form action="/casadocodigo/produtos" method="POST"> 
		<!--Campo Tìtulo  -->
		<div>
			<label>Título</label> <input type="text" name="título">
		</div>
		<!--Campo Descrição  -->
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<!--Campo Páginas  -->
		<div>
			<label>Páginas</label> <input type="text" name="paginas">
		</div>
		<!-- Botão cadastrar -->
		<button type="submit">Cadastrar</button>

	</form>
</body>
</html>