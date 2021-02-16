class PokemonStore
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2/pokemon/'
  attr_accessor :offset, :limit

  def initialize(offset = 0, limit = 20)
    @options = { query: { offset: offset, limit: limit } }
    @offset = offset
    @limit = limit
  end

  def request
    self.class.get("/", @options).body
  end

  def json
    JSON.parse(self.class.get("/", @options).body)
  end

  def index
    json["results"]
  end

  def next_path
    return unless json["next"]
    json["next"].gsub(/.*\?/,'./?')
  end

  def previous_path
    return unless json["previous"]
    json["previous"].gsub(/.*\?/,'./?')
  end
end


