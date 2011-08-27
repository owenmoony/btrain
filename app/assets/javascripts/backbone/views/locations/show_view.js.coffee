Btrain.Views.Locations ||= {}

class Btrain.Views.Locations.ShowView extends Backbone.View
  template: JST["backbone/templates/locations/show"]
   
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))
    return this