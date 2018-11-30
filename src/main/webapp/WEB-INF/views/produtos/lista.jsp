<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Lovro de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
	
	<c:url value="/resources/css" var="cssPath"/>
		
	<link rel="stylesheet" href="${cssPath }/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <style type="text/css">
        body{
            padding: 0px 0px;
        }
    </style>
    
</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Casa do Código</a>
	    </div>
	    <div  id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="${s:mvcUrl('PC#listar').build()}">Lista de Produtos</a></li>
				<li><a href="${s:mvcUrl('PC#form').build()}">Cadastro de Produtos</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			  <li>
			    <a href="#">
			        <security:authentication property="principal" var="usuario"/>
			        Usuário: ${usuario.username}
			    </a>
			  </li>
			 <li class="nav-item">
			 	<a href="<c:url value="/logout" />">Sair</a></span>
			 </li>			  
			</ul>
	    </div><!-- /.navbar-collapse -->
	  </div>
	</nav>
	<div class="container">
		<h1>Lista de Produtos</h1>
		
		<p>${message}</p>
		
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>Título</th>
				<th>Descrição</th>
				<th>Páginas</th>
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
	</div>
</body>
</html>