class PokemonController < ApplicationController
  def index
    @offset = params['offset']
    @limit  = params['limit']

    @pokemon_store = PokemonStore.new(@offset, @limit)
    @pokemons = @pokemon_store.index
  end
end
