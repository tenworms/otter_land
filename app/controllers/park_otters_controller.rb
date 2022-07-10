class ParkOttersController < ApplicationController
  def index
    park = Park.find(params[:park_id])
    @otters = park.otters
  end

end
