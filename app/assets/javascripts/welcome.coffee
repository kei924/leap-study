# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
  touch = false
  $('#humberger').on 'click touchstart', (e) ->

    drawerToggle = ->
      $('body').toggleClass 'drawer-opened'
      touch = false
      return

    switch e.type
      when 'touchstart'
        drawerToggle()
        touch = true
        return false
      when 'click'
        if !touch
          drawerToggle()
        return false
    return
  $('#overlay').on 'click touchstart', ->
    $('body').removeClass 'drawer-opened'
    return
  return
) jQuery