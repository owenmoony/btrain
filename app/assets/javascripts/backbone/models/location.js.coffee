class Btrain.Models.Location extends Backbone.Model
  paramRoot: 'location'

  defaults:
    address: null
    state: null
    suburb: null
    postcode: null
    details: null
  
class Btrain.Collections.LocationsCollection extends Backbone.Collection
  model: Btrain.Models.Location
  url: '/locations'