Spine = require('spine')

class AboutController extends Spine.Controller
  className: "aboutController"
    
  constructor: ->
    super
    @render()

  render:=>
    @html require('views/about')
    
module.exports = AboutController