require 'faker'
require 'poke-api-v2'

Trainer.destroy_all

20.times do
  Trainer.create(
    name: Faker::Name.unique.name,
    height: Faker::Number.between(from: 100, to: 200),
    weight: Faker::Number.between(from: 40, to: 150),
    age: Faker::Number.between(from: 10, to: 100)
  )
end



