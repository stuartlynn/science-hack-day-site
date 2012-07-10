Spine = require('spine')
Hack = require('models/hack')
class HackShowController extends Spine.Controller
  className: 'hackShowController'
  constructor: ->
    super

  render:(hack)=>
    @html require('views/hackShow')
      hack : hack

  active:(slug)=>
    super 
    hack = Hack.findBySlug(slug.id)
    console.log hack
    @render(hack)

module.exports = HackShowController