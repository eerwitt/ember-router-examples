root = exports ? this
root.App = Em.Application.create()

# Models
App.Post = DS.Model.extend
  title: DS.attr "string"
  body: DS.attr "string"
  id: DS.attr "number"

# Controllers
App.ApplicationController = Em.ObjectController.extend()

App.PostsController = Em.ArrayController.extend
  content: []

App.PostController = Em.ObjectController.extend()

# Views
App.ApplicationView = Em.View.extend
  templateName: 'application'

App.PostsView = Em.View.extend
  templateName: 'posts'

App.PostView = Em.View.extend
  templateName: 'post'

# Test data
App.store = DS.Store.create
  revision: 4

App.store.load App.Post,
  title: "Post Title"
  body: "Post Body"
  id: 1

# Router
App.Router = Em.Router.extend
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/',
      redirectsTo: 'posts'
    posts: Em.Route.extend
      route: '/posts'
      showPost: Em.Router.transitionTo('post')
      connectOutlets: (router) ->
        router.get("applicationController").connectOutlet('posts', [App.store.find(App.Post, 1)])
    post: Em.Route.extend
      route: '/posts/:post_id'
      connectOutlets: (router, post) ->
        router.get('applicationController').connectOutlet('post', post)

App.router = App.Router.create()

$ ->
  App.initialize(App.router)
