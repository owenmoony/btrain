class Btrain.Routers.LocationsRouter extends Backbone.Router
  initialize: (options) ->
    @locations = new Btrain.Collections.LocationsCollection()
    @locations.reset options.locations

  routes:
    "/new": "newLocation"
    "/index": "index"
    "/:id/edit": "edit"
    "/:id": "show"
    ".*": "index"

  newLocation: ->
    @view = new Btrain.Views.Locations.NewView(collection: @locations)
    $("#locations").html(@view.render().el)

  index: ->
    @view = new Btrain.Views.Locations.IndexView(locations: @locations)
    $("#locations").html(@view.render().el)

  show: (id) ->
    location = @locations.get(id)
    
    @view = new Btrain.Views.Locations.ShowView(model: location)
    $("#locations").html(@view.render().el)
    
  edit: (id) ->
    location = @locations.get(id)

    @view = new Btrain.Views.Locations.EditView(model: location)
    $("#locations").html(@view.render().el)
  