<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="actionUrl" value="save" />

<form:form id="bookForm" commandName="book" method="post"
	action="${actionUrl}" class="form-horizontal" role="form">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Libro</h4>
			</div>
			<div class="modal-body">
				<form:input path="id" type="hidden" />
				<div class="form-group">
					<label class="control-label col-sm-2" for="title">Título</label>
					<div class="col-sm-10">
						<form:input path="name" type="text" class="form-control"
							id="title" placeholder="Título del libro" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="author">Autor</label>
					<div class="col-sm-10">
						<form:input path="author" type="text" class="form-control"
							id="author" placeholder="Autor del libro" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="style">Estilo</label>
					<div class="col-sm-10">
						<form:input path="style" type="text" class="form-control"
							id="style" placeholder="Estilo del libro" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="location">Ubicación</label>
					<div class="col-sm-10">
						<form:input path="location" type="text" class="form-control"
							id="location" placeholder="Ubicación del libro" />
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				<button type="submit" class="btn btn-primary">Guardar</button>
			</div>
		</div>
	</div>
</form:form>