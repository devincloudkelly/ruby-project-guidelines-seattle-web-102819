Mushroom.delete_all
Location.delete_all
User.delete_all
Forage.delete_all
Mushroom.reset_pk_sequence
Location.reset_pk_sequence
User.reset_pk_sequence
Forage.reset_pk_sequence


## mushroom instances
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

Mushroom.create(name: "Morel", habitat: "mixed forest", edible?: true, poisonous?: false, days_after_rain_til_growth: 3)


## location instances
coordinates = []
25.times do |n|
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


## User instances
User.create(name: "Devin Kelly", age: 32)
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))
User.create(name: Faker::Name.name, age: rand(15..78))


## forage instances
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)
Forage.create(mushroom_id: Mushroom.all.sample.id, location_id: Location.all.sample.id, quantity_harvested: rand(1..18), user_id: User.all.sample.id)

