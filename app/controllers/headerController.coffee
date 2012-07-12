Spine = require('spine')
Hack  = require('models/hack')


class HeaderController extends Spine.Controller
  elements:
    '.content' : 'content'

  constructor: ->
    super
    @render()

    Spine.Route.bind "change", (location) =>
      if location.path.indexOf('events') > -1 or location.path=='/'
        @renderWithHack Hack.randomFeatured()
      else 
        @render()
        @el.animate
          height: 200
        ,400
        @el.css
          "background-image" : "none"


  render:(hack=null)=>
    @html require("/views/nav")
      hack : hack

  renderWithHack:(hack)=>
    @render hack
    window.cont = @

    @el.animate
      height: 400
    ,400

    @el.css
      "background-image" : "url(#{hack.bannerImage})"

module.exports = HeaderController