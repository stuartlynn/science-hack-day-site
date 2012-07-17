Spine = require('spine')
Event  = require('models/event')

class EventsController extends Spine.Controller
  className: 'eventsController'

  constructor: ->
    super
    Event.bind "refresh", =>
      @render()

  render:=>
    @html require('/views/events')
      events: Event.all()
 


module.exports = EventsController