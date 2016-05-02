{SelectListView} = require 'atom-space-pen-views'

module.exports =
class MySelectListView extends SelectListView
 initialize: ->
   super
   @addClass('overlay from-top')
   @setItems(['Hello', 'World'])
   @panel ?= atom.workspace.addModalPanel(item: this)
   @panel.show()
   @focusFilterEditor()

 viewForItem: (item) ->
  @div "Type your answer:"
  @subview 'answer', new TextEditorView(mini: true)

 confirmed: (item) ->
   console.log("#{item} was selected")

 cancelled: ->
   console.log("This view was cancelled")
