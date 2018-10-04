
require 'rails_helper'

RSpec.describe "planets", type: :feature do
  it "shows all the planets in 'li' tags" do
    visit "/planets"
    expect(page).to have_css("a")
  end

  # it "shows the alien's bio in a 'p' tag" do
  #   visit alien_path(@alien)
  #   expect(page).to have_css("p")
  # end

  # it "contains a link to the alien's planet" do
  #   visit alien_path(@alien)
  #   expect(page).to have_link(@planet.name, href: planet_path(@planet))
  # end
end