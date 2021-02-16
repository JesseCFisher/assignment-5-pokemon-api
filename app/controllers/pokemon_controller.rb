class PokemonController < ApplicationController
  def index
    @request = HTTParty.get("https://pokeapi.co/api/v2/pokemon?offset=0&limit=20")
    @json = JSON.parse(@request.body)
    @pokemons = @json["results"]
  end
end
