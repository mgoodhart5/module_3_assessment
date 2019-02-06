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
end
