class SearchController < ApplicationController

  def index
    @all_stations = Station.find_all(params[:q])
  end
end
