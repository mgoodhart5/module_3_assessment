class SearchController < ApplicationController

  def index
    zip = params[:q]

    @conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params["api_key"] = ENV['GOV_API_KEY']
      faraday.adapter = Faraday.default_adapter
    end

    response = @conn.get("api/alt-fuel-stations/v1.json?fuel_type=LPG,ELEC&zip=81401&limit=10&format=JSON")
  end
end
