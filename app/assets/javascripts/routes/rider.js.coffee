App.RiderRoute = Ember.Route.extend
  model: (params) ->  @store.find 'rider', params.id
