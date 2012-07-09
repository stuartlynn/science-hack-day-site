Spine = require('spine')
Hack  = require('models/hack')

class HacksController extends Spine.Controller
  className: "hacksController"
  constructor: ->
    super
    Hack.bind 'refresh', =>
      @render()

  render:=>
    @html require('views/hacks')
      hacks: Hack.all()
    
module.exports = HacksController