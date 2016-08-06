require 'rails_helper'

describe PokemonService do
  context "get_pokemon" do
    it "returns a an list of pokemon" do
      VCR.use_cassette("151 pokemon") do
        pokemon = PokemonService.new.get_pokemon

        expect(pokemon.count).to eq(151)
        expect(pokemon.first).to eq("Bulbasaur")
        expect(pokemon.last).to eq("Mew")
      end
    end
  end
end
