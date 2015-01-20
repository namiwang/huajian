Polymer
  ready: ->
    @screens = [ 'poem_show', 'poem_new', 'word_new' ]
    @create_methods_for_switching_current_screen()

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

  create_methods_for_switching_current_screen: ->
    for screen in @screens
      screen_name = screen.replace /_/g, '-'
      method_body = "this.switch_current_screen( \'#{screen_name}\' )"
      @["switch_current_screen_to_#{screen}"] = new Function method_body

  # open_menu_drawer: ->