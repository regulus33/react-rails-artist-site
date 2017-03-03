// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .



function carousel() {

	ul = $("ul");
	var slide_count = ul.children().length;
	var slide_width_pc = 100.0 / slide_count;
	var slide_index = 0;

	ul.find("li").each(function(indx) {
		var left_percent = (slide_width_pc * indx) + "%";
		$(this).css({"left":left_percent});
		$(this).css({width:(100 / slide_count) + "%"});
	});

// Listen for click of prev button
$(document).on("click", ".slider .prev", function() {
	console.log("prev button clicked");
	slide(slide_index - 1);
});

// Listen for click of next button
$(document).on("click", ".slider .next", function() {
	console.log("next button clicked", slide_index);
	console.log(ul);
	slide(slide_index + 1);
});

function slide(new_slide_index) {

	var margin_left_pc = (new_slide_index * (-100)) + "%";
	ul.animate({"margin-left": margin_left_pc}, 400, function() {
    console.log("ran")
		slide_index = new_slide_index

	});

}

};


