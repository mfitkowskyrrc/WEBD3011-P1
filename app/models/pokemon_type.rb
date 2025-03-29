class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :poke_type
end
