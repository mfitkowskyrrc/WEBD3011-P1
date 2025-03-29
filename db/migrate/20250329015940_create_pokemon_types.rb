class CreatePokemonTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemon_types do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :poke_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
