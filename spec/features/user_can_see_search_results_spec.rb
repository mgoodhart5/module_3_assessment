require 'rails_helper'

describe "As a user When I visit /" do
  it 'can fill in the zipcode and be shown results' do
    visit "/"
    zip = 81401
    fill_in "q", with: zip
    click_on "Locate"

    expect(current_path).to eq(search_path)

    within "#station-0"
      expect(page).to have_content("Hours: 24 hours daily")
      expect(page).to have_content("Name: Montrose Memorial Hospital")
      expect(page).to have_content("Fuel Types: ELEC")
      expect(page).to have_content("Street Address: 800 S 3rd St")
      expect(page).to have_content("City: Montrose")
      expect(page).to have_content("Distance: 1.94081 miles")
  end
end







# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
