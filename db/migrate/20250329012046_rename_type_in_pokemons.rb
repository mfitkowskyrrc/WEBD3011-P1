class RenameTypeInPokemons < ActiveRecord::Migration[8.0]
  def change
    rename_column :pokemons, :type, :pokemon_type
  end
end
