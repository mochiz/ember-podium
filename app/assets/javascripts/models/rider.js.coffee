App.Rider = DS.Model.extend
  name: DS.attr('string')
  avatar: DS.attr('string')
  team: DS.attr('string')
  twitter: DS.attr('string')
  results: DS.hasMany('result')
