class Pokemon < ApplicationRecord
  def self.make_pokemon
    pokemons = PokemonService.new.get_pokemon["results"]
    pokemons.map do |pokemon|
      # byebug
      where(name: pokemon["name"]).first_or_create do |new_pokemon|
        new_pokemon.name = pokemon["name"]
        new_pokemon.url = pokemon["url"]
      end
    end
  end
end
