Spine = require('spine')

class Hack extends Spine.Model
  @configure 'Hack', 'name', 'description', 'thumbImage',"mainImage", "event","team", 'url'

  @fetch:=>
    for hack in require('/lib/hacks')
      Hack.create(hack)
    Hack.trigger("refresh")

  @random:=>
    console.log Math.floor(Math.random()*@count())
    @all()[Math.floor(Math.random()*@count())]

  slug:=>
    @name.replace(/\s/g,"_")
  
  @findBySlug:(slug)=>
    results = @select (hack)=>
      hack.slug()==slug
    results[0]
module.exports = Hack