(function() {
  Polymer({
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
    switch_current_screen_to_poem_show: function() {
      return this.switch_current_screen('poem-show');
    }
  });

}).call(this);

//# sourceMappingURL=base.js.map
