# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
        $('#districts').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
          iDisplayLength: 25
          aLengthMenu: [[25, 50, 100, -1], [25, 50, 100, "All"]]
