Btrain.Views.Locations ||= {}

class Btrain.Views.Locations.IndexView extends Backbone.View
  template: JST["backbone/templates/locations/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render');
    
    @options.locations.bind('reset', this.addAll);
   
  addAll: () ->
    @options.locations.each(this.addOne)
  
  addOne: (location) ->
    view = new Btrain.Views.Locations.LocationView({model : location})
    this.$("tbody").append(view.render().el)
       
  render: ->
    $(this.el).html(this.template(locations: this.options.locations.toJSON() ))
    @addAll()
    
    return this