Spine = require('spine')

class Hack extends Spine.Model
  @configure 'Hack', 'name', 'description', 'thumbImage',"mainImage", "event"

  @fetch:=>
    for hack in require('/lib/hacks')
      Hack.create(hack)
    Hack.trigger("refresh")

  @random:=>
    console.log Math.floor(Math.random()*@count())
    @all()[Math.floor(Math.random()*@count())]


module.exports = Hack