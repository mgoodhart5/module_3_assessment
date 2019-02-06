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

    stations



    # @conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
    #   faraday.params["api_key"] = ENV['GOV_API_KEY']
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    # response = @conn.get("api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=#{zip}&limit=10&format=JSON")
    #
    # results = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    #
    # @stations = results.map do |result|
    #   Station.new(result)
    # end
  end

end
