# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".twoBoxes").mouseenter ->
    $(this).fadeTo 500, 1
    $(this).siblings().fadeTo 500, 0.5
    return
  return
