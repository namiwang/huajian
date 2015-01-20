(function() {
  Polymer({
    selected: 'poem-index',
    domReady: function() {
      return this["super"]();
    },
    app_switch_current_screen: function(e, data, sender) {
      this.selected = data.screen_name;
      switch (data.screen_name) {
        case 'nation':
          return this.$.nationScreen.nationId = data.data.nation_id;
      }
    }
  });

}).call(this);

//# sourceMappingURL=app.js.map
