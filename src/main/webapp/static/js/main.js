function addBook() {
	$('#editWindow').modal('show');
	$("#title").focus();
}

function editBook(id) {
	$.get("get/" + id, function(result) {
		$("#editWindow").html(result);
		$('#editWindow').modal('show');
		$("#deleteBook").show();
	});
}

function deleteBook(id) {
	window.location.href = "delete/" + id;
}