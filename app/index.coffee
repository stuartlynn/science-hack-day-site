require('lib/setup')

Spine = require('spine')

HomeController = require('controllers/homeController')
AboutController = require('controllers/aboutController')
EventsController =  require('controllers/eventsController')
HacksController = require('controllers/hacksController')
Event  = require('models/event')
Hack  = require('models/hack')


class App extends Spine.Stack
  controllers:
    home   : HomeController
    about  : AboutController
    events : EventsController
    hacks  : HacksController
  
  routes:
    '/'        : 'events'
    '/hacks/'  : 'hacks'
    '/hacks'   : 'hacks'
    '/about/'  : 'about'
    '/about'   : 'about'
    '/events/' : 'events'
    '/events'  : 'events'

  
  default: 'home'

  constructor: ->
    super
    Event.fetch()
    Hack.fetch()
    Spine.Route.setup()
    



module.exports = App
    