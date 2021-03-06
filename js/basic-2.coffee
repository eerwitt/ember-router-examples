root = exports ? this
root.App = Em.Application.create()

# Models
App.Trackback = Em.Object.extend
  site: null

App.Comment = Em.Object.extend
  title: null
  body: null

App.Post = Em.Object.extend
  trackbacks: []
  comments: []
  title: null
  body: null

# Controllers
App.ApplicationController = Em.ObjectController.extend()

App.TrackbacksController = Em.ArrayController.extend()

App.CommentsController = Em.ArrayController.extend()

App.PostController = Em.ObjectController.extend()

App.PostsController = Em.ArrayController.extend
  content: []

# Views
App.ApplicationView = Em.View.extend
  templateName: 'application'

App.TrackbacksView = Em.View.extend
  templateName: 'trackbacks'

App.CommentsView = Em.View.extend
  templateName: 'comments'

App.PostsView = Em.View.extend
  templateName: 'posts'

App.PostView = Em.View.extend
  templateName: 'post'

# Test data, this belongs in a fixture but to keep things simple it is here
testPost = App.Post.create
  comments: [App.Comment.create(title: "Comment from annoying internet user")]
  trackbacks: [App.Trackback.create(site: "http://google.com")]
  title: "Post Title"
  intro: "Post Intro"
  body: "Post Body"
  id: 1

# Routes
App.Router = Em.Router.extend
  enableLogging: true
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/'
      redirectsTo: 'posts'
    posts: Em.Route.extend
      route: '/posts'
      showPost: Em.Router.transitionTo('post')
      connectOutlets: (router) ->
        router.get("applicationController").connectOutlet('posts', [testPost])
    post: Em.Route.extend
      route: '/posts/:post_id'
      showTrackbacks: Em.Route.transitionTo('trackbacks')
      showComments: Em.Route.transitionTo('comments')
      connectOutlets: (router, post) ->
        router.get('applicationController').connectOutlet('post', post)
      index: Em.Route.extend
        route: '/'
        redirectsTo: 'comments'
      comments: Em.Route.extend
        route: '/comments'
        connectOutlets: (router) ->
          postController = router.get('postController')
          postController.connectOutlet('comments', postController.get('comments'))
      trackbacks: Em.Route.extend
        route: '/trackbacks'
        connectOutlets: (router) ->
          postController = router.get('postController')
          postController.connectOutlet('trackbacks', postController.get('trackbacks'))

App.router = App.Router.create()

$ ->
  App.initialize(App.router)
