require 'rails_helper'

describe Pokemon do
  context "make_pokemon" do
    it "makes pokemon in the database" do
      VCR.use_cassette("151 pokemon") do
        pokemon = Pokemon.make_pokemon
        expect(pokemon.first.name).to eq("bulbasaur")
        expect(pokemon.last.name).to eq("mew")
        expect(Pokemon.count).to eq(151)
      end
    end
  end
end
