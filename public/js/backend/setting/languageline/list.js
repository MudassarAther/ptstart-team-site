var fn = {
	init: function() {
		this.bindEvents();
		this.render();
	},

	bindEvents: function() {
		var self = this;

    //turn to inline mode
    $.fn.editable.defaults.mode = 'inline';
    $.fn.editable.defaults.send = "always";

    $('a[id^="lang-line-text"]').editable({
      error: function(response) {
        console.log(response);
      },
      success: function(response, newValue) {
          if (response.status == 'error') return response.msg; //msg will be shown in editable form
      }
    });
	},

	render: function() {
		//Global.renderMaxlength();
	},
}

$(document).ready(function() {
	fn.init();
});
