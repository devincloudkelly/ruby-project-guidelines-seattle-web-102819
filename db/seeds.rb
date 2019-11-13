require 'random-location'


## mushroom instsances
habitat_options = ["deciduous forest", "coniferous forest", "mixed forest"]
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))
Mushroom.create(name: Faker::Ancient.primordial, habitat: habitat_options.sample, edible?: [true, false].sample, poisonous?: [true, false].sample, days_after_rain_til_growth: rand(1..5))



## location instances
coordinates = []
25.time do |n|
    coordinates << RandomLocation.near_by(47.60936, -122.33741, 10000)
end
terrain_options = ["hilly", "flat", "mountainous"]

Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)
Location.create(name: Faker::Games::Zelda.location, coordinates: coordinates.sample, terrain: terrain_options.sample)



## forage instances

