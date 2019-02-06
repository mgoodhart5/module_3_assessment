require 'rails_helper'

describe "As a user When I visit /" do
  it 'can fill in the zipcode and be shown results' do
    visit "/"
    zip = 81401
    fill_in "q", with: zip
    click_on "Locate"

    expect(current_path).to eq(search_path)

    within ".station-0" do
      expect(page).to have_content("Hours: 24 hours daily")
      expect(page).to have_content("Name: Montrose Memorial Hospital")
      expect(page).to have_content("Fuel Types: ELEC")
      expect(page).to have_content("Street Address: 800 S 3rd St")
      expect(page).to have_content("City: Montrose, CO")
      expect(page).to have_content("Distance: 1.94 miles")
    end
    within ".station-1" do
      expect(page).to have_content("Distance: 2.27 miles")
    end
    #testing raw data instead of implementing webmock...so I hardcoded the known values
  end
end
