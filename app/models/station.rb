class Station
  attr_reader :name, :street_address, :city, :fuel_types, :distance, :access_times

  def initialize(attributes)
    @name = attributes[:station_name]
    @street_address = attributes[:street_address]
    @city = attributes[:city]
    @fuel_types = attributes[:fuel_types]
    @distance = attributes[:distance]
    @access_times = attributes[:access_times]
  end
end
