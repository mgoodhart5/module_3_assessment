class Station
  attr_reader :hours, :name, :street_address, :city, :fuel_types, :distance

  def initialize(attributes)
    @hours = attributes[:access_days_time]
    @name = attributes[:station_name]
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @fuel_types = attributes[:fuel_type_code]
    @distance = attributes[:distance]
  end

  def self.find_all(zip)
    stations = StationService.find_the_stations(zip).map do |raw_station|
      Station.new(raw_station)
    end
    Station.sorted_by_distance(stations)
  end

  def self.sorted_by_distance(stations)
    stations.sort_by do |station|
      station.distance
    end
  end

end
