(function() {
  Polymer({
    ready: function() {
      this.screens = ['poem_show', 'poem_new', 'word_new'];
      return this.create_methods_for_switching_current_screen();
    },
    domReady: function() {
      return this.fill_partials();
    },
    fill_partials: function() {
      var content, content_to_fill, node_id, _ref, _results;
      if (this.partials == null) {
        return;
      }
      _ref = this.partials;
      _results = [];
      for (node_id in _ref) {
        content = _ref[node_id];
        switch (content.type) {
          case 'plain':
            content_to_fill = content.content;
        }
        _results.push(this.$[node_id].innerHTML = content_to_fill);
      }
      return _results;
    },
    switch_current_screen: function(screen_name, data) {
      return this.fire('core-signal', {
        name: 'app-switch-current-screen',
        data: {
          screen_name: screen_name,
          data: data
        }
      });
    },
    create_methods_for_switching_current_screen: function() {
      var method_body, screen, screen_name, _i, _len, _ref, _results;
      _ref = this.screens;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        screen = _ref[_i];
        screen_name = screen.replace(/_/g, '-');
        method_body = "this.switch_current_screen( \'" + screen_name + "\' )";
        _results.push(this["switch_current_screen_to_" + screen] = new Function(method_body));
      }
      return _results;
    }
  });

}).call(this);

//# sourceMappingURL=base.js.map
