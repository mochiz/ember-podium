App.Result = DS.Model.extend
  race: DS.belongsTo('race')
  rider: DS.belongsTo('rider')
  position: DS.attr('string')
