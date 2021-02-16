class Pokemon
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2/pokemon/'
  attr_accessor :id

  def initialize(id)
    @id = id
  end

  def request
    self.class.get("/#{@id}").body
  end

  def json
    JSON.parse(request)
  end

  def name
    json["name"].capitalize
  end

  def abilities
    json["abilities"]
  end

  def next_path
    return unless json["next"]
    json["next"].gsub(/.*\?/,'./?')
  end

  def previous_path
    return unless json["previous"]
    json["previous"].gsub(/.*\?/,'./?')
  end

  def json_parse

  end
end


