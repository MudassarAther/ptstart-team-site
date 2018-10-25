$(document).ready(function() {
	var fn = {
		init: function() {
			this.bindEvent();
			this.render();
		},

		bindEvent: function() {
      // create discussion
      $('.add-discussion-link').on('click', function() {

        var self = this;

        var type = $(this).data('type');
        var ref_id     = $(this).data('ref_id');
        var $form = $(this).closest('form');

        $('input[name="type"]', $form).val(type);
        $('input[name="ref_id"]', $form).val(ref_id);

        $form.submit();

        return false;
      });

      $('.delete-discussion').on('click', function() {
        var self  = this;
        var id = $(this).data('discussion-id');
        var alert_title = 'Confirm';
        var alert_message = 'Are you sure to delete this?';

        $.alert.create({
          message: alert_message,
          title: alert_title,
          cancelButton: {
              label: "No",
              className: '',
              callback: function() {
              }
          },
          actionButton: {
              label: "Yes",
              className: '',
              callback: function() {

                var url = "/discussion/" + id + "/delete";
                $.ajax({
                  type: 'GET',
                  url: url,
                  error: function() {
                    console.log('error');
                  },
                  success: function(response) {
                    console.log('success');
                    self.closest(".discussion-item").remove();
                  }

                });
              }
          }
        });
        return false;
      });
		},

		render: function() {
		},
	}

	fn.init();
});
