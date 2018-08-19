# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  User.create(
    name: Faker::Name.name
  )
end

10.times do
  Character.create(
    name: Faker::Name.name,
    occupation: Faker::Job.title,
    level: Faker::Number.between(1,100),

    user_id: Faker::Number.between(1,5)
  )
end
4.times do
  Party.create(
    name: Faker::Kpop.girl_groups,
    player_count: Faker::Number.between(2,4)
  )
end
6.times do
  CharacterParty.create(
    character_id: Faker::Number.between(1,10),
    party_id: Faker::Number.between(1,4)
  )
end
