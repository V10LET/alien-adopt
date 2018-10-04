require 'rails_helper'

RSpec.describe "aliens/show", type: :feature do
  
    it "shows the alien's show page" do
      visit aliens_path(@alien)
      expect(page).to have_css("p")
    end
  
    it "contains a link to the alien's planet" do
      visit aliens_path(@alien)
      expect(page).to have_link(nil, href: planets_path(@planet))
    end
  end