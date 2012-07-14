Spine = require('spine')

class HowToController extends Spine.Controller
  className: "HowToController"
  constructor: ->
    super
    @render()

  render:=>
    @html require('views/howTo')
    
module.exports = HowToController