# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'races', path: '/', ->
    @resource 'race', path: '/races/:id'
    @resource 'rider', path: '/rider/:id'

App.Router.reopen
  location: 'auto'
  rootURL: '/'
