Btrain.Views.Locations ||= {}

class Btrain.Views.Locations.LocationView extends Backbone.View
  template: JST["backbone/templates/locations/location"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @options.model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))    
    return this