class SearchController < ApplicationController

  def index
    @all_stations = Station.find_all(params[:q])

    # @zip = params[:q]
    #
    # @conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
    #   faraday.params["api_key"] = ENV['GOV_API_KEY']
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    # response = @conn.get("api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=#{@zip}&limit=10&format=JSON")
    #
    # results = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
    #
    # @stations = results.map do |result|
    #   Station.new(result)
    # end
  end
end
