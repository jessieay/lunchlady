class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    location = Location.new(params[:location])

    if location.save
      render json: { show_uri: location_url(location) }, status: :created
    else
      render json: {}, status: :bad_request
    end
  end
end
