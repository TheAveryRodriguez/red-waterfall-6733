require "rails_helper"

RSpec.describe "user can search for affiliated characters" do
  describe "user selects fire nation select field and searches for members" do
    it "takes them to the search page and displays people in the fire nation with info", :vcr do
      visit root_path

      select "Fire Nation", from: "nation"

      click_button "Search For Members"

      expect(current_path).to eq("/search")

      expect(page).to have_content("Total Number of People:")
      expect(page).to have_content("First 25 Members Info:")
      expect(page).to have_content("Name:")
      expect(page).to have_content("Allies:")
      expect(page).to have_content("Enemies:")
      expect(page).to have_content("Affiliations:")
    end
  end
end
