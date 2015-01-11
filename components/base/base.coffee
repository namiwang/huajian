Polymer
  domReady: ->
    @fill_partials()

  fill_partials: ->
    return unless @partials?

    for node_id, content of @partials
      switch content.type
        when 'plain'
          content_to_fill = content.content

      @.$[node_id].innerHTML = content_to_fill

  switch_current_screen: (screen_name, data) ->
    @fire 'core-signal',
      name: 'app-switch-current-screen'
      data: 
        screen_name: screen_name
        data: data

  switch_current_screen_to_poem_show: -> @switch_current_screen 'poem-show'

  # open_menu_drawer: ->