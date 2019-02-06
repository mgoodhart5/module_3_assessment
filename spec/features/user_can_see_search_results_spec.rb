require 'rails_helper'

describe "As a user When I visit /" do
  it 'can fill in the zipcode and be shown results' do
    zip = 81401
    fill_in "input[value='Search by zip...']", with: zip
    click_on "Search by zip..."

    expect(path).to eq(search_path)
    expect(page).to have_content("Stations")
  end
end







# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
