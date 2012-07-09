Spine = require('spine')

class HomeController extends Spine.Controller
  className: "homeController"
  constructor: ->
    super
    @render()

  render:=>
    @html require('views/home')
    
module.exports = HomeController