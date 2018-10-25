(function ($) {
	var fn = {
		init: function() {
			this.bindEvents();
			this.render();
		},

		bindEvents: function() {
			var self = this;

			// topic dropdown
			$('.grp-filter-topic li').on('click', this.topicClickHandler);

			// location dropdown
			$('.location-select').select2({
				width: 'resolve',
				templateSelection: this.locationChangeHandler,
				ajax: {
			    url: '/ajax/locations',
			    dataType: 'json',
					processResults: function (data) {
			      return {
			        results: data
			      };
			    },
			  },
			});
		},

		render: function() {
		},

		topicClickHandler: function (e) {

			// set topic string
			var text = $(this).find('a').html();
			$(".grp-filter-topic button").html(text);

			// get topic id
			$topic_id = $(this).find("a").data('id');

			// get old location id
			$old_location_id = $("#selected-location-id").attr('value');

			// call ajax for topic
			var url = '/projects/ajax/' + $topic_id + "/" + $old_location_id;
			$.ajax({
				type: 'GET',
				url: url,
				success: function(response) {
					$('.project-list-view').empty();
					$('.project-list-view').append(response);
				}

			});
		},

		locationChangeHandler: function (state) {

			// get old topic id
			$old_topic_id = $("#selected-topic-id").attr('value');

			$location_id = state.id;

			// call ajax for topic
			var url = '/projects/ajax/' + $old_topic_id + "/" + $location_id;
			$.ajax({
				type: 'GET',
				url: url,
				success: function(response) {
					$('.project-list-view').empty();
					$('.project-list-view').append(response);
				}

			});

			return state.text;
		},
	}

	fn.init();
})(jQuery);
