class RemovePokemonTypeFromPokemons < ActiveRecord::Migration[8.0]
  def change
    remove_column :pokemons, :pokemon_type, :string
  end
end
