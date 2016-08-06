class AddUrlToPokemon < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :url, :string
  end
end
