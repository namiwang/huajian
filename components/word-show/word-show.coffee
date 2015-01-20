Polymer
  editableChanged: (old_value, new_value) ->
    # since haml will convert {editable: true} into <editable> instead of <editable = true>,
    # which is I want, so I have to manually update the boolean values.
    switch new_value
      when 'true'
        @editable = true
      when 'false'
        @editable = false
