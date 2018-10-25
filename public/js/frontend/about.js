(function ($) {
	var fn = {
		init: function() {
			this.bindEvents();
			this.render();
		},

		bindEvents: function() {

		},

		render: function() {
			$('#members').owlCarousel({
        center: false,
				loop: true,
				singleItem : true,
				autoPlay: 3000, //Set AutoPlay to 3 seconds
				dots: true,
      });
		}
	};

	fn.init();
})(jQuery);
