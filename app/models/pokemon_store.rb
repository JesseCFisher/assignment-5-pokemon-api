class PokemonStore
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2/pokemon/'

  def initialize(offset = 0, limit = 20)
    @options = { query: { offset: offset, limit: limit } }
  end

  def index
    JSON.parse(self.class.get("/", @options).body)["results"]
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end


