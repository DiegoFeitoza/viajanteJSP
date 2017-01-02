window.onload = function(){	
	$('#tableSearch').dataTable({
		"language":{
			"sEmptyTable": "Nenhum anfitrião encontrado",
		    "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ anfitriões",
		    "sInfoEmpty": "Mostrando 0 até 0 de 0 anfitriões",
		    "sInfoFiltered": "(Filtrados de _MAX_ anfitriões)",
		    "sInfoPostFix": "",
		    "sInfoThousands": ".",
		    "sLengthMenu": "_MENU_ anfitriões por página",
		    "sLoadingRecords": "Carregando...",
		    "sProcessing": "Processando...",
		    "sZeroRecords": "Nenhum anfitrião encontrado",
		    "sSearch": "Pesquisar",
		    "oPaginate": {
		        "sNext": "Próximo",
		        "sPrevious": "Anterior",
		        "sFirst": "Primeiro",
		        "sLast": "Último"
		    },
		}
	});

}
function clickTrash(){
	alert ("Excluir Anfitrião em construção");
}

function clickEdit(){
	alert ("Editar Anfitrião em construção");
}

function create() {
	validateFields();
	handleErrorMessage();
}

function handleErrorMessage() {
	var messages = $("#mensagem");
	if ($('form')[0].checkValidity()) {
		messages.hide();
	} else {
		messages.show();
	}
}

function validateFields() {
	$('form input, form select, form textarea').each(function() {
		validateField(this);
	});
}

function validateField(item) {
	var parent = $(item).parent();

	if (item.checkValidity()) {
		parent.removeClass('has-error');
	} else {
		parent.addClass('has-error');
	}
}
