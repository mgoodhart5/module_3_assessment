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
                  state: "CO",
                  fuel_type_code: "Propane, Electric",
                  distance: "10 miles",
    }
    station = Station.new(attributes)

    expect(station.name).to eq("Marys")
    expect(station.street_address).to eq("301 S First")
    expect(station.city).to eq("Montrose")
    expect(station.state).to eq("CO")
    expect(station.fuel_types).to eq("Propane, Electric")
    expect(station.distance).to eq("10 miles")
    expect(station.hours).to eq("24 hrs")
  end
  it '.sort_by_distance' do
    attributes_1 = {
                  access_days_time: "24 hrs",
                  station_name: "Marys",
                  street_address: "301 S First",
                  city: "Montrose",
                  state: "CO",
                  fuel_type_code: "Propane, Electric",
                  distance: "10",
    }
    attributes_2 = {
                  access_days_time: "24 hrs",
                  station_name: "Marys",
                  street_address: "301 S First",
                  city: "Montrose",
                  state: "CO",
                  fuel_type_code: "Propane, Electric",
                  distance: "20",
    }
    attributes_3 = {
                  access_days_time: "24 hrs",
                  station_name: "Marys",
                  street_address: "301 S First",
                  city: "Montrose",
                  state: "CO",
                  fuel_type_code: "Propane, Electric",
                  distance: "1",
    }
    station_1 = Station.new(attributes_1)
    station_2 = Station.new(attributes_2)
    station_3 = Station.new(attributes_3)
    sorted = [station_3, station_1, station_2]

    expect(Station.sorted_by_distance([station_1, station_2, station_3])).to eq(sorted)
  end
end
