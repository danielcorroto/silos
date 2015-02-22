<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Lista de libros</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="static/css/bootstrap.min.css">
<style>
body {
	padding-top: 50px;
	padding-bottom: 20px;
}
</style>
<link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="static/css/main.css">

<script src="static/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Silos</a>
			</div>
			<button type="button" class="btn btn-default navbar-btn"
				onclick="addBook()">Añadir</button>
		</div>
	</nav>


	<div class="container">

		<table class="table">
			<thead>
				<tr>
					<th width="40%">Título</th>
					<th width="25%">Autor</th>
					<th width="15%">Estilo</th>
					<th width="15%">Ubicación</th>
					<th width="5%"><span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookList}" var="book" varStatus="loopCounter">
					<tr onclick="editBook(<c:out value="${book.id}" />)">
						<td><c:out value="${book.name}" /></td>
						<td><c:out value="${book.author}" /></td>
						<td><c:out value="${book.style}" /></td>
						<td><c:out value="${book.location}" /></td>
						<td><a href="delete/<c:out value="${book.id}" />" class="removeBook"><span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div id="editWindow" class="modal fade bs-example-modal-lg"
			tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
			aria-hidden="true">
			<%@ include file="bookForm.jsp"%>
		</div>

	</div>
	<!-- /container -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="static/js/vendor/jquery-1.11.2.min.js"><\/script>')
	</script>

	<script src="static/js/vendor/bootstrap.min.js"></script>

	<script src="static/js/main.js"></script>
</body>
</html>