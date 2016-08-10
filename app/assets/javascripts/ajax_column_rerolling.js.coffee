ready = ->

  game_name = ->
    return document.URL.split('/')[4].split('#')[0]


  $(document).on 'click', '.reroll-column-button', ->
    if $('.loading').is(':visible')
      return

    $(@).children('.loading').show()
    column_name_to_reroll = $(@).attr('id')

    regular = {}
    spoiler = {}
    columns = $('.column.regular')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        text = $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()

        if $(@).hasClass('active')
          text = '@' + text

        return text
      ).get()
      regular[column_name] = items


    columns = $('.column.spoiler')

    $(columns).each (key, column) ->
      column_name = $(column).attr('id')
      items = $(column).children('.item').map( ->
        text = $(@).text().replace(/(\r\n|\n|\r|)/gm,"").trim()

        if $(@).hasClass('active')
          text = '@' + text

        return text
      ).get()
      spoiler[column_name] = items

    data = {
      column_name: column_name_to_reroll,
      r: regular,
      s: spoiler
    }

    url = '/game/' + game_name() + '/reroll/column'

    $.get(
      url, data
    ).done( (data) ->
      $('#generator-columns').empty()
      $('#generator-columns').append(data)
    )

  $(document).on 'click', '.reroll-button', ->
    if $('.loading').is(':visible')
      return

    $(@).children('.loading').show()
    url = '/game/' + game_name() + '/reroll'

    $.get(
      url
    ).done( (data) ->
      $('#generator-columns').empty()
      $('#generator-columns').append(data)
      $('.loading').hide()
    )

$(document).ready(ready)
$(document).on('page:load', ready)