$LOAD_PATH << File.dirname(__FILE__)
require '../../lib/pie'

make_pie do
  template :game_screen

  create_places do
    cave description:"you are in a cave, with two paths in front of you. the right has a warm draft, the left has a cold chill"
    volcano description:"you stumble out of the tunnel into the open air. you are on an active volcano during an eruption. the lava covers the passage you came from.there is another passage."
    crystal_cave description:"you enter a beautiful crystal cave. it seems to continue on. the crystals look fragile."
    cave2 description:"You enter the passageway. Lava surrounds the entrance of the cave passage. Your only choice is forward."
    flaming_death description:"The lava outruns you. You die. On fire."
    lake description:"you come to an underwater lake. as you draw near, some... thing... comes out of the water and lets you breathe underwater. it tells you to go for a swim." 
    guardian description:"as you crack off a peice of crystal, a giant skeleton guardian of crystals forms from the other crystals and attacks you."
    pie_shop description:"just as you think the cave passage is never ending, you see a light. you realize it's a bakery.they're having a special on pie."
    atlantis description:"as you submerge into the water, you see a hidden underwater city. they invite you to live there. you accept and happily grow old there, becoming a very good swimmer with very prune-y fingers."
    dead_crystal description:"You throw pie at the gaurdian, and he shouts out'NOOOOOOOOOOOO!', while simultainously crumbling to dust. talk about multi-tasking!you see that the skull is still intact."
    death description:" you attack the guardian. he attacks you back, only better. you die."
    victory description:"You buy Pie. CONGRATULATIONS! YOU WIN! NOT ONLY IS PIE INFINITE, BUT THIS GAME WAS MADE USING PIE! PLUS, SOMEWHERE ALONG THE WAY,PIE HAS THE NUMBER 42 IN IT! YOU NOW KNOW THE SECRET TO THE UNIVERSE."
    indiana_jones_ending description:"Indiana jones runs in, fires some shots behind him, and pushes a rock in front of the entrance. he sees you with the skull and invites you to join his adventures. after a short gunfight, you ride off into the sunset with him."
    restart description:"you go towards the light. you see the grim reaper. he says \"if you want, I could revive you at the begining of this whole adventure, but you'll owe me one. deal?\""
  end

  map do 
    path(cave:"Right", volcano:"Left")
    path(cave:"Left", crystal_cave:"Right")
    path(volcano:"run from lava", flaming_death:"")
    path(flaming_death:"go towards the light", restart:"")
    path(volcano:"go down passage", cave2:"")
    path(cave2:"go forward", pie_shop:"")
    path(pie_shop:"buy pie", victory:"")
    path(victory:"play again", cave:"")
    path(crystal_cave:"take crystal", guardian:"")
    path(guardian:"fight the darn thing", death:"")
    path(death:"go towards the light", restart:"")
    path(restart:"deal", cave:"")
    path(guardian:"throw pie at the guardian", dead_crystal:"")
    path(dead_crystal:"take skull", indiana_jones_ending:"")
    path(indiana_jones_ending:"play again", cave:"")
    path(crystal_cave:"keep going", lake:"")
    path(lake:"do as the thing says and swim man!!!", atlantis:"")
    path(atlantis:"play again", cave:"")
  end

  image cave:"http://farm4.static.flickr.com/3288/3159250610_4bcc94113b_z.jpg"
  image volcano:"http://farm5.static.flickr.com/4016/4210838735_05286c6331_z.jpg"
  image crystal_cave:"http://farm1.static.flickr.com/147/380880773_12321cc7a9_z.jpg"
  image cave2:"http://farm5.static.flickr.com/4093/4806561339_d36c0b7c58_z.jpg"
  image flaming_death:"images/flaming_death.png"
  image lake:"http://farm1.static.flickr.com/213/512496938_96d9adb238_z.jpg?zz=1"
  image guardian:"http://farm1.static.flickr.com/42/124335468_aa7b84f96e_z.jpg?zz=1"
  image pie_shop:"http://farm1.static.flickr.com/56/141332285_5fe906a825_z.jpg"
end
