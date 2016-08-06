require 'rails_helper'

RSpec.feature "user can see a pokemon" do
  scenario "a user sees a pokemon when they visit the homepage" do
    visit "/"

    expect(page).to have_content("pokemon")
  end
end
