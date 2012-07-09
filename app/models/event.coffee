Spine = require('spine')

class Event extends Spine.Model
  @configure 'Event', 'name', 'country', 'dates'

  @fetch:=>
    for event in require("lib/events")
      Event.create event 
    Event.trigger("refresh")

  flagName:=>
    @country.replace(/\s*/g, "")

module.exports = Event