App.RaceRoute = Ember.Route.extend
  model: (params) -> @store.find 'race', params.id
