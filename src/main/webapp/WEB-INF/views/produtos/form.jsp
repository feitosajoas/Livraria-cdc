<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livro de Java, Android, iPhone, RUby, PHP e muito mais - Casa do C�digo</title>
</head>
<body>
	<!-- direciona para /produtos -->
	<form action="/casadocodigo/produtos" method="POST"> 
		<!--Campo T�tulo  -->
		<div>
			<label>T�tulo</label> <input type="text" name="t�tulo">
		</div>
		<!--Campo Descri��o  -->
		<div>
			<label>Descri��o</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<!--Campo P�ginas  -->
		<div>
			<label>P�ginas</label> <input type="text" name="paginas">
		</div>
		<!-- Bot�o cadastrar -->
		<button type="submit">Cadastrar</button>

	</form>
</body>
</html>