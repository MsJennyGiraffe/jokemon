class PokemonService
  def initialize
    @_conn = Faraday.new("http://pokeapi.co/api/v2/")
  end

  def get_pokemon
    response = conn.get("pokemon/?limit=151&offset=151.json")
    parse(response)
  end

  def conn
    @_conn
  end

  private
  def parse(response)
    JSON.parse(response.body)
  end
end
