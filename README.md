#Ember Router Basics
![Ember Icon](http://emberjs.com/images/about/ember-productivity-sm.png)

## What is it?

[Ember.js](http://emberjs.com) is a great **Client Side MVC framework**.

I like it for it's convention over configuration practice which makes code more minimalistic and easier to maintain.

I prefer to use it over [Backbone](http://backbonejs.org/) for larger projects due to ember's maintainability with larger code bases.

I recommend trying both and others from [Spine](http://spinejs.com/) to [batman](http://batmanjs.org/).

## Overview

This code is a working example I built based of the guide located at [Ember Application Structure](http://emberjs.com/guides/outlets/).

I did my best to keep the code as minimal as possible. In order to run I recommend having [Coffeescript](http://coffeescript.org/) on your machine. Once installed you can run `coffee -cw js` from within the root of the project. This will compile the coffee files to the correct js which is automatically included on the page.

At that point you can an example file in any browser which supports [Ember](http://emberjs.com/) to play around with the code.

## Examples

I try to keep each example as self contained as possible even though it requires duplicating some code. All the html files have a corresponding [coffee/js file](https://github.com/eerwitt/ember-router-basicexample/tree/master/js).

1. Basic-1 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-1.html)|[js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-1.coffee)] The most basic use of the router with the ability to go from an index route (**state**) to a list of posts and finally to an individual post.
2. Basic-2 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-2.html)|[js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-2.coffee)] A slightly more sophisticated version with the ability to show Trackbacks and Comments.
3. Basic-3 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-3.html)|[js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-3.coffee)] Includes [ember-data](https://github.com/emberjs/data) for the models.
4. Basic-4 [[html](https://github.com/eerwitt/ember-router-basicexample/blob/master/basic-4.html)|[js](https://github.com/eerwitt/ember-router-basicexample/blob/master/js/basic-4.coffee)] Includes some form editing and submissions.

## Questions (PC LOAD LETTER)

If you need help or if I am doing something wrong please don't hesitate to contact me. I am as new to [Ember](http://emberjs.com/) as most people so I don't pretend to know it all.
