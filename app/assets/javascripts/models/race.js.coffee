App.Race = DS.Model.extend
  name: DS.attr('string')
  icon: DS.attr('string')
  image: DS.attr('string')
  start_at: DS.attr('date')
  url: DS.attr('string')
  results: DS.hasMany('result', { async: false })
  date: (->
    if @get('end_at')
      moment(@get('start_at')).format('MM/DD') + '〜' + moment(@get('end_at')).format('MM/DD')
    else
      moment(@get('start_at')).format('MM/DD')
  ).property('start_at', 'end_at')
