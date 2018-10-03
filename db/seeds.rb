Personality.destroy_all
Planet.destroy_all
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
mischievious = Personality.create(name: "Mischievious")
crazy = Personality.create(name: "Crazy")
aggressive = Personality.create(name: "Aggresive")
slow = Personality.create(name: "Slow")

zirgon9 = Planet.create(name: "Zirgon 12", climate: "Hot", diet: "Sand Beetles")
turo = Planet.create(name: "Turo", climate: "Chilly", diet: "Sadness")
traflorkia = Planet.create(name: "Traflorkia", climate: "Spicy", diet: "Steak Tacos")
mars = Planet.create(name: "Mars", climate: "Toasty", diet: "Red Dust")
errkt = Planet.create(name: "Errkt", climate: "Temperate", diet: "Cake")
gallifrey = Planet.create(name: "Galifrey", climate: "Tropical", diet: "Silver Tree Leaves")
amphibios = Planet.create(name: "Amphibios 9", climate: "Swampy", diet: "Bugs")
remool = Planet.create(name: "Remool", climate: "Airy", diet: "Humans")


clothes = Toy.create(name: "Dress Up Clothes")
doll = Toy.create(name: "Doll")
phone = Toy.create(name: "Phone")
clamps = Toy.create(name: "Medical Clamps")
tardis = Toy.create(name: "Tardis")
the_moon = Toy.create(name: "The moon...and also the rest of the infinite cosmos")
tree = Toy.create(name: "Woodland Critters")
basket = Toy.create(name: "Spicy Jelly Basket")
raygun = Toy.create(name: "Ray Gun")
surf = Toy.create(name: "Surf Board")

stitch = Alien.create(toy: surf, name: "Stitch", bio: "escaped experiment 626 with a lot of love to give", owner: nil, planet: errkt,  therapy: true)
roger = Alien.create(toy: clothes, name: "Roger", bio: "area 51 reject who doesn't care what you think", owner: nil, planet: errkt,  therapy: false)
eetee = Alien.create(toy: phone, name: "E.T.", bio: "phoning home — got dial tone", owner: nil, planet: errkt,  therapy: true)
zoidburg = Alien.create(toy: clamps, name: "Zoidburg", bio: "posing on errkt as a mediocre doctor - wants to give back but not that much", owner: nil , planet: amphibios,  therapy: false)
glip_glops = Alien.create(toy: basket, name: "Glip Glops", bio: "mind hive jellies with nothing to do and a distaste for peanut butter", owner: nil, planet: traflorkia,  therapy: false)
timelord = Alien.create(toy: tardis, name: "The Doctor", bio: "travels time and space for friendship, adventure, and ruckus", owner: nil, planet: gallifrey,  therapy: true)
moon_creature = Alien.create(toy: the_moon, name: "Moon Creature", bio: "posed as errkt's moon and hatched early to disprove flat errkt believers", owner: nil, planet: errkt,  therapy: true)
groot = Alien.create(toy: tree, name: "Groot", bio: "heals surrounding life forms because quote 'I am Groot?' unquote.", owner: nil, planet: errkt,  therapy: false)
marvin = Alien.create(toy: raygun, name: "Marvin Martian", bio: "doing his best to take over earth", owner: nil, planet: mars, therapy: false)
pug = Alien.create(toy: clothes, name: "Frank", bio: "waiting for someone to put some respek on his name", owner: nil, planet: remool, therapy: false)

PersonalityTrait.create(personality: sassy, alien: roger)
PersonalityTrait.create(personality: moody, alien: roger)
PersonalityTrait.create(personality: crazy, alien: zoidburg)
PersonalityTrait.create(personality: awkward, alien: zoidburg)
PersonalityTrait.create(personality: playful, alien: stitch)
PersonalityTrait.create(personality: mischievious, alien: stitch)
PersonalityTrait.create(personality: empathetic, alien: eetee)
PersonalityTrait.create(personality: intuitive, alien: eetee)
PersonalityTrait.create(personality: proud, alien: glip_glops)
PersonalityTrait.create(personality: aggressive, alien: glip_glops)
PersonalityTrait.create(personality: cultured, alien: timelord)
PersonalityTrait.create(personality: proud, alien: timelord)
PersonalityTrait.create(personality: intuitive, alien: moon_creature)
PersonalityTrait.create(personality: genuis, alien: moon_creature)
PersonalityTrait.create(personality: loyal, alien: groot)
PersonalityTrait.create(personality: slow, alien: groot)
