class CreatePokemons < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :dex_number
      t.string :abilities
      t.string :type
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
