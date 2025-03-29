require 'faker'
require 'poke-api-v2'

PokemonType.destroy_all
Pokemon.destroy_all
PokeType.destroy_all
Trainer.destroy_all

#create types
pokemon_types = PokeApi.get(:type)

pokemon_types.results.each do |type|
  PokeType.create(
    name: type.name
  )
end

#create trainers
20.times do
  trainer = Trainer.create!(
    name: Faker::Name.unique.name,
    height: Faker::Number.between(from: 100, to: 200),
    weight: Faker::Number.between(from: 40, to: 150),
    age: Faker::Number.between(from: 10, to: 100)
  )

  # give each trainer 10 pokemon
  10.times do
    pokemon_id = rand(1..1025)
    pokemon_data = PokeApi.get(pokemon: pokemon_id)

    pokemon = Pokemon.create!(
      name: pokemon_data.name.capitalize,
      dex_number: pokemon_data.id,
      abilities: pokemon_data.abilities.map { |a| a.ability.name.capitalize }.join(', '),
      height: pokemon_data.height,
      weight: pokemon_data.weight,
      trainer_id: trainer.id
    )

    #associate pokemon with their types
    pokemon_data.types.each do |type_info|
      type_name = type_info.type.name
      poke_type = PokeType.find_by(name: type_name)
      if poke_type
        PokemonType.create!(pokemon: pokemon, poke_type: poke_type)
      end
    end
  end
end



