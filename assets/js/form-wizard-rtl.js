(function($) {
	"use strict";
	
	//accordion-wizard
	var options = {
		mode: 'wizard',
		autoButtonsNextClass: 'btn btn-primary float-left',
		autoButtonsPrevClass: 'btn btn-light',
		stepNumberClass: 'badge badge-pill badge-primary ml-1',
		onSubmit: function() {
		  form.submit();
		  return true;
		}
	}
	$( "#form" ).accWizard(options);
		
})(jQuery); 