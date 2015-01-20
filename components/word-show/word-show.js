(function() {
  Polymer({
    editableChanged: function(old_value, new_value) {
      switch (new_value) {
        case 'true':
          return this.editable = true;
        case 'false':
          return this.editable = false;
      }
    }
  });

}).call(this);

//# sourceMappingURL=word-show.js.map
