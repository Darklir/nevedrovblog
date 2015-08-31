# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
		if $(".show").val() == ""
			$(".btn").prop('disabled', true)
			$("#comment_body").keyup ->
				postLength = $(this).val().length
				charactersLeft = 200 - postLength
				$('.counter').text("Characters left: " + charactersLeft)
				
				if charactersLeft < 0
					$(".btn").prop('disabled', true)
				else if charactersLeft == 200
					$(".btn").prop('disabled', true)
				else
					$(".btn").prop('disabled', false)
		
			

			
			
			

