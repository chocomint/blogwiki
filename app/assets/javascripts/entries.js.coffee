$ ->
	$("h2.entry-subject").bind 'click', (event) ->
		$(event.target).parent().children(".entry-body").slideToggle()

$ ->
	for table in $("div.entry-body table")
		table.className = "table table-striped table-bordered table-condensed"

$ ->
	for pre in $("div.entry-body pre")
		pre.className = "prettyprint linenums"
		prettyPrint()
