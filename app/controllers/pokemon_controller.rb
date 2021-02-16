class PokemonController < ApplicationController
  def index
    @offset = params['offset']
    @limit  = params['limit']

    @pokemon_store = PokemonStore.new
    @pokemons = @pokemon_store.index
  end
end
