root = exports ? this
root.App = Em.Application.create()

App.Router = Em.Router.extend
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/',

App.ApplicationController = Em.ObjectController.extend()

App.ApplicationView = Em.View.extend
  templateName: "application"

$ ->
  App.initialize()
