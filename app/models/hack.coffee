Spine = require('spine')

class Hack extends Spine.Model
  @configure 'Hack', 'name', 'description', 'thumbImage',"mainImage", "event","team", 'url','featured','bannerImage'

  @fetch:=>
    for hack in require('/lib/hacks')
      Hack.create(hack)
    Hack.trigger("refresh")

  @random:=>
    @all()[Math.floor(Math.random()*@count())]

  @featuredHacks:=>
    @select (hack)=>
      hack.featured

  @randomFeatured:=>
    featuredHacks = @featuredHacks()
    featuredHacks[Math.floor(Math.random()*featuredHacks.length)]
    

  slug:=>
    @name.replace(/\s/g,"_")
  
  @findBySlug:(slug)=>
    results = @select (hack)=>
      hack.slug()==slug
    results[0]
module.exports = Hack