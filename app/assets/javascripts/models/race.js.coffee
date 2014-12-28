App.Race = DS.Model.extend
  name: DS.attr('string')
  icon: DS.attr('string')
  image: DS.attr('string')
  start_at: DS.attr('date')
  url: DS.attr('string')
  results: DS.hasMany('result', { async: false })
