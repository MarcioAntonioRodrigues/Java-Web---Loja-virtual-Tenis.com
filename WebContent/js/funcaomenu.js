
	
	$(document).ready(function(e){

		$('.sub-menu').hide();

		$('.show-sub-menu').hover(function(){

			$(this).find('.sub-menu').slideDown('fast');

		}, function(){

			$(this).find('.sub-menu').slideUp('fast');

		});

	});

	