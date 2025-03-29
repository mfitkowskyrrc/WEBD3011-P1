class PagesController < ApplicationController
  def about
  end

  def pokemon_by_type
    @poke_types = PokeType.all
  end

  def poke_types
    poke_type = PokeType.find_by(name: params[:poke_type_name])
    @pokemons = poke_type.pokemons
  end
end
