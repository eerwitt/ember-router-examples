#Ember Router Basics
![Ember Icon](http://emberjs.com/images/about/ember-productivity-sm.png)

## What is it?

[Ember.js](http://emberjs.com) is a great **Client Side MVC framework**.

They are quickly reaching [release 1.0](http://emberjs.com/blog/2012/08/03/ember-1-0-prerelease/) which means there are constant changes. Recently one fantastic addition is the [Router](http://emberjs.com/blog/2012/08/03/ember-1-0-prerelease/#toc_router) which allows you to easily define the multiple states of your app.

This project is meant to help fill in the blanks on how to quickly get moving at creating an [Ember](http://emberjs.com) app utilizing the router. The JS code is written in [Coffee](http://coffeescript.org).

## Overview

This code is built based on the guide located at [Ember Application Structure](http://emberjs.com/guides/outlets/).

The code is as minimal as possible in order to help the ease of setup and isolation. In order to run the examples you need [Coffeescript](http://coffeescript.org/) on your machine. Once installed you can run `coffee -cw js` from within the root of the project. This will compile the coffee files to JS each time they change.

At that point you can open an example file in any browser which supports [Ember](http://emberjs.com/) to play around with the code.

## Examples

Each example is as self contained as possible even though it requires duplicating code. All the html files have a corresponding [coffee/js file](https://github.com/eerwitt/ember-router-basicexample/tree/master/js).

**_Remember_ to run** `coffee -c js/*.coffee` before attempting to use the examples.

1. Basic-1 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-1.html) | [js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-1.coffee)] The most basic use of the router with the ability to go from an index route (**state**) to a list of posts and finally to an individual post.
2. Basic-2 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-2.html) | [js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-2.coffee)] A slightly more sophisticated version with the ability to show Trackbacks and Comments.
3. Basic-3 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-3.html) | [js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-3.coffee)] Includes [ember-data](https://github.com/emberjs/data) for the models.
4. Basic-4 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-4.html) | [js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-4.coffee)] Includes some form editing and submissions.

## Questions, Comments

If you need help or have improvements please don't hesitate to contact me (or pull request). I am as new to [Ember](http://emberjs.com/) as most people so I don't pretend to know it all.
