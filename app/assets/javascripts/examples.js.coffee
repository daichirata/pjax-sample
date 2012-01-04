# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
$ ->
    popped = 'state' in window.history
    initialURL = location.href

    if window.history && window.history.pushState
        $(".btn").live "click", ->
            window.history.pushState "", "", @href
            ajaxHandler @href
            return false
        $(window).bind "popstate", ->
            initialPop = !popped && location.href == initialURL
            popped = true
            unless initialPop
                ajaxHandler location.href
            return false

ajaxHandler = (url) ->
    row = $('.row')
    row.animate opacity: 0.1, 100
    $.ajax
        url: url
        cache: false
        dataType: 'html'
        beforeSend: (xhr) ->
            xhr.setRequestHeader 'X-PJAX', 'true'
        success: (data) ->
            row.html(data).animate opacity: 1, 300

