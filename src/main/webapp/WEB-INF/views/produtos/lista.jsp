<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lovro de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<body>

	<h1>Lista de Produtos</h1>
	
	<div>${sucesso}</div>
	<div>${falha}</div>
	
	<table>
		<tr>
			<td>Título</td>
			<td>Descrição</td>
			<td>Páginas</td>
		</tr>

		<c:forEach items="${produtos }" var="produto">
			<tr>
				<td>
					<a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build() }">${produto.titulo }</a>
				</td>			
				<td>${produto.titulo }</td>
				<td>${produto.descricao }</td>
				<td>${produto.paginas}</td>
			</tr>				
		</c:forEach>

	</table>

</body>
</html>