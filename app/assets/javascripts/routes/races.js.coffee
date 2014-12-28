App.RacesRoute = Ember.Route.extend
  model: -> @store.find('race')
