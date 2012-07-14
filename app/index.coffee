require('lib/setup')

Spine = require('spine')

HomeController = require('controllers/homeController')
AboutController = require('controllers/aboutController')
EventsController =  require('controllers/eventsController')
HacksController = require('controllers/hacksController')
HackShowController = require('controllers/hackShowController')
HowToController = require('controllers/howToController')

Event  = require('models/event')
Hack  = require('models/hack')


class App extends Spine.Stack
  controllers:
    home      : HomeController
    about     : AboutController
    events    : EventsController
    hacks     : HacksController
    hackShow  : HackShowController
    howto     : HowToController

  routes:
    '/'            : 'events'
    '/hacks/'      : 'hacks'
    '/hacks'       : 'hacks'
    '/hacks/:id'   : 'hackShow'
    '/about/'      : 'about'
    '/about'       : 'about'
    '/events/'     : 'events'
    '/events'      : 'events'
    '/howto'       : 'howto'

  
  default: 'home'

  constructor: ->
    super
    Event.fetch()
    Hack.fetch()
    Spine.Route.setup()
    



module.exports = App
    