# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$("h2.entry-subject").bind 'click', (event) ->
		$(event.target).parent().children(".entry-body").slideToggle()
