Personality.destroy_all
Planet.destroy_all
Owner.destroy_all
Alien.destroy_all
Toy.destroy_all
PersonalityTrait.destroy_all

sassy = Personality.create(name: "Sassy")
awkward = Personality.create(name: "Awkward")
empathetic = Personality.create(name: "Empathetic")
proud = Personality.create(name: "Proud")
ambitious = Personality.create(name: "Ambitious")
intuitive = Personality.create(name: "Intuitive")
cultured = Personality.create(name: "Cultured")
moody = Personality.create(name: "Moody")
playful = Personality.create(name: "Playful")
loyal = Personality.create(name: "Loyal")
genuis = Personality.create(name: "Genius")
bashful = Personality.create(name: "Bashful")
adventurous = Personality.create(name: "Adventurous")
crazy = Personality.create(name: "Crazy")

zirgon9 = Planet.create(name: "Zirgon 9", climate: "Hot", gravity: 10, diet: "Sand Beetles")
saturn = Planet.create(name: "Saturn", climate: "Chilly", gravity: 47, diet: "Ring Sprinkles")
texacar = Planet.create(name: "Texacar", climate: "Spicy", gravity: 1, diet: "Steak Tacos")
mars = Planet.create(name: "Mars", climate: "Toasty", gravity: 234, diet: "Red Grapes")
errkt = Planet.create(name: "Errkt", climate: "Temperate", gravity: 9.8, diet: "Chipotle Bowl")

zoe = Owner.create(name: "Zoe", bio: "Got kicked off zirgon9 for illegal taco mining", therapy: false, planet: mars)
violet = Owner.create(name: "Violet", bio: "Needs new seeing 3 eyed alien", therapy: true, planet: saturn)
jordan = Owner.create(name: "Jordan", bio: "Texacar's most infamous kickboxing legend", therapy: false, planet: texacar)
micheal = Owner.create(name: "Micheal", bio: "Defeated RagnarIII in Red Grape eating competition", therapy: false, planet: mars)
morgan = Owner.create(name: "Morgan", bio: "Looking for fourth heart replacement", therapy: true, planet: zirgon9 )
christie = Owner.create(name: "Christie", bio: "Looking to vacation on Errkt. Came during non-temperate season :( ", therapy: false, planet: errkt)

stitch = Alien.create(name: "Stitch", bio: "escaped experiment 626 with a lot of love to give", owner: jordan, planet: errkt,  therapy: true)
roger = Alien.create(name: "Roger", bio: "area 51 reget who doesn't care what you think", owner: jordan, planet: errkt,  therapy: false)
eetee = Alien.create(name: "E.T.", bio: "phoning home — doesn't service isn't in range... nice though", owner: morgan, planet: errkt,  therapy: true)
zoidburg = Alien.create(name: "Zoidburg", bio: "posing on errkt as a mediocre doctor - wants to give back but not that much", owner: zoe , planet: zirgon9,  therapy: false)
glip_glops = Alien.create(name: "Glip Glops", bio: "mind hive jellies with nothing to do and a distaste for peanut butter", owner: micheal, planet: texacar,  therapy: false)
timelord = Alien.create(name: "Time Lord", bio: "travels time and space for friendship, adventure and ruckus", owner: violet, planet: saturn,  therapy: true)
moon_creature = Alien.create(name: "Moon Creature", bio: "posed as errkt's moon and hatched early to disprove flat errkt believers", owner: violet, planet: mars,  therapy: true)
tree_guy = Alien.create(name: "Tree Guy", bio: "heals surrounding life forms because quote eh, why not? unquote.", owner: christie, planet: mars,  therapy: true)

clothes = Toy.create(name: "Dress up clothes", alien: roger)
doll = Toy.create(name: "Doll", alien: stitch)
phone = Toy.create(name: "Phone", alien: eetee)
clamps = Toy.create(name: "Medical Clamps", alien: zoidburg)
time_machine = Toy.create(name: "Time Machine", alien: timelord)
the_moon = Toy.create(name: "The moon...and also the rest of the infinite cosmos", alien: moon_creature)

PersonalityTrait.create(personality: sassy, alien: roger)
PersonalityTrait.create(personality: moody, alien: roger)
PersonalityTrait.create(personality: crazy, alien: zoidburg)
PersonalityTrait.create(personality: awkward, alien: zoidburg)
PersonalityTrait.create(personality: playful, alien: stitch)
PersonalityTrait.create(personality: adventurous, alien: stitch)
PersonalityTrait.create(personality: empathetic, alien: eetee)
PersonalityTrait.create(personality: intuitive, alien: eetee)
PersonalityTrait.create(personality: proud, alien: glip_glops)
PersonalityTrait.create(personality: crazy, alien: glip_glops)
PersonalityTrait.create(personality: cultured, alien: timelord)
PersonalityTrait.create(personality: proud, alien: timelord)
PersonalityTrait.create(personality: intuitive, alien: moon_creature)
PersonalityTrait.create(personality: genuis, alien: moon_creature)
PersonalityTrait.create(personality: loyal, alien: tree_guy)
PersonalityTrait.create(personality: ambitious, alien: tree_guy)