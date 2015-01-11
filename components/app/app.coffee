Polymer
  selected: 'poem-index'

  domReady: ->

  app_switch_current_screen: (e, data, sender) ->
    @selected = data.screen_name
    switch data.screen_name
      when 'nation'
        @.$.nationScreen.nationId = data.data.nation_id
