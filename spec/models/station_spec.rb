require 'rails_helper'

describe Station do
  it 'exists' do
    station = Station.new({})

    expect(station).to be_a(Station)
  end
  it 'is initialized with attributes' do
    attributes = {
                  access_days_time: "24 hrs",
                  station_name: "Marys",
                  street_address: "301 S First",
                  city: "Montrose",
                  fuel_type_code: "Propane, Electric",
                  distance: "10 miles",
    }
    station = Station.new(attributes)

    expect(station.name).to eq("Marys")
    expect(station.street_address).to eq("301 S First")
    expect(station.city).to eq("Montrose")
    expect(station.fuel_types).to eq("Propane, Electric")
    expect(station.distance).to eq("10 miles")
    expect(station.hours).to eq("24 hrs")
  end
end
