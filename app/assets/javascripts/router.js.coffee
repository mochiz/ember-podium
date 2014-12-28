# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'races', path: '/', ->
    @resource 'race', path: '/races/:id'

App.Router.reopen
  location: 'auto'
  rootURL: '/'
