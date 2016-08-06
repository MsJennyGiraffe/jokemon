require 'rails_helper'

describe PokemonService do
  context "get_pokemon" do
    it "returns a an list of pokemon" do
      VCR.use_cassette("151 pokemon") do
        pokemon = PokemonService.new.get_pokemon

        expect(pokemon["results"].count).to eq(151)
        expect(pokemon["results"].first["name"]).to eq("bulbasaur")
        expect(pokemon["results"].last["name"]).to eq("mew")
      end
    end
  end
end
