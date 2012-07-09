Spine = require('spine')

class FooterController extends Spine.Controller
  constructor: ->
    super
    @render()
  
  render:=>
    @html require("/views/footer")
    
module.exports = FooterController