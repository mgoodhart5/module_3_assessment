require 'rails_helper'

describe Station do
  it 'exists' do
    station = Station.new({})

    expect(station).to be_a(Station)
  end
  it 'is initialized with attributes' do
    attributes = {
                  name: "Marys",
                  address: "301 S First Montrose, Co 81401",
                  fuel_types: "Propane, Electric",
                  distance: "10 miles",
                  access_times: "6am - 10pm"
    }
    station = Station.new(attributes)

    expect(station.name).to eq("Marys")
    expect(station.address).to eq("301 S First Montrose, Co 81401")
    expect(station.fuel_types).to eq("Propane, Electric")
    expect(station.distance).to eq("10 miles")
    expect(station.access_times).to eq("6am - 10pm")
  end
end
