module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        options:
          trace: true
          bare: false
          sourceMap: true
        files: [
          expand: true
          flatten: false
          cwd: ''
          src: [ 'components/**/*.coffee', 'scripts/*.coffee' ]
          dest: ''
          ext: '.js'
          extDot: 'last'
        ]
    # cson: 
    #   compile:
    #     expand: true
    #     src: [ 'resources/**/*.cson' ]
    #     dest: ''
    #     ext: '.json'
    sass:
      compile:
        options:
          trace: true
          # sourcemap: true
          # debugInfo: true
          lineNumbers: true
        files: [
          expand: true
          flatten: false
          cwd: ''
          src: [ 'components/**/*.sass', 'styles/*.sass' ]
          dest: ''
          ext: '.css'
          extDot: 'last'
        ]
    haml:
      compile:
        options:
          trace: true
          bundleExec: true
          style: 'expanded'
        files: [
          expand: true
          cwd: ''
          src: [ 'index.haml', 'components/**/*.haml' ]
          dest: ''
          ext: '.html'
          extDot: 'last'
        ]

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  # grunt.loadNpmTasks 'grunt-cson'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-haml2html'

  # grunt.registerTask 'default', ['coffee', 'cson', 'haml', 'sass']
  grunt.registerTask 'default', ['coffee', 'haml', 'sass']
