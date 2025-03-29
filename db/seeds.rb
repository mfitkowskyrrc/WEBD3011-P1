require 'faker'
require 'poke-api-v2'

Trainer.destroy_all
Pokemon.destroy_all

#create trainers
20.times do
  trainer = Trainer.create!(
    name: Faker::Name.unique.name,
    height: Faker::Number.between(from: 100, to: 200),
    weight: Faker::Number.between(from: 40, to: 150),
    age: Faker::Number.between(from: 10, to: 100)
  )
  # give each trainer 12 pokemon
  12.times do
    pokemon_id = rand(1..1025)
    pokemon_data = PokeApi.get(pokemon: pokemon_id)

    Pokemon.create!(
      name: pokemon_data.name.capitalize,
      dex_number: pokemon_data.id,
      abilities: pokemon_data.abilities.map { |a| a.ability.name.capitalize }.join(', '),
      pokemon_type: pokemon_data.types.map { |t| t.type.name.capitalize }.join(', '),
      height: pokemon_data.height,
      weight: pokemon_data.weight,
      trainer_id: trainer.id
    )
  end
end



