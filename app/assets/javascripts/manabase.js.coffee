$ ->
  $('.close').click -> $(this).parent().hide()
  $('.dropdown-toggle').click (e) ->
    $('.dropdown').addClass('open')
    $('.dropdown-menu').show()
    e.stopPropagation()
  $('body').click ->
    $('.dropdown').removeClass('open')
    $('.dropdown-menu').hide()


