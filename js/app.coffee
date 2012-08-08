root = exports ? this
root.App = Em.Application.create()

App.Router = Em.Router.extend
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/',
      redirectsTo: 'posts'
    posts: Em.Route.extend
      route: '/posts'
      connectOutlets: (router) ->
        router.get("applicationController").connectOutlet('posts', [App.Post.create(title: "blahas")])
    post: Em.Route.extend
      route: '/posts/:post_id'

App.ApplicationController = Em.ObjectController.extend()

App.ApplicationView = Em.View.extend
  templateName: 'application'

App.PostsController = Em.ArrayController.extend()

App.PostsView = Em.View.extend
  templateName: 'posts'

App.PostController = Em.ObjectController.extend()

App.PostView = Em.View.extend
  templateName: 'post'

App.Post = Em.Object.extend
  title: null
  body: null

$ ->
  App.initialize()
