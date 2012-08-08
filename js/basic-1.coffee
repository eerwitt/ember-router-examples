root = exports ? this
root.App = Em.Application.create()

App.Post = Em.Object.extend
  title: null
  body: null

App.ApplicationController = Em.ObjectController.extend()

App.ApplicationView = Em.View.extend
  templateName: 'application'

App.PostsController = Em.ArrayController.extend
  content: []

App.PostsView = Em.View.extend
  templateName: 'posts'

App.PostController = Em.ObjectController.extend()

App.PostView = Em.View.extend
  templateName: 'post'

App.Router = Em.Router.extend
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/',
      redirectsTo: 'posts'
    posts: Em.Route.extend
      route: '/posts'
      showPost: Em.Router.transitionTo('post')
      connectOutlets: (router) ->
        router.get("applicationController").connectOutlet('posts', [App.Post.create(id: 1, title: "Post Title", body: "Post Body", intro: "Post Intro")])
    post: Em.Route.extend
      route: '/posts/:post_id'
      connectOutlets: (router, post) ->
        router.get('applicationController').connectOutlet('post', post)

App.router = App.Router.create()

$ ->
  App.initialize(App.router)
