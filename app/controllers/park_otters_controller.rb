class ParkOttersController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
      if params[:sort] == 'alpha'
        @otters = @park.otters.alphabetical
      else
        @otters = @park.otters
      end

  end

  def new
    @park = Park.find(params[:park_id])
  end

  def create
  @park= Park.find(params[:park_id])
   @park.otters.create(otter_params)
   redirect_to "/parks/#{@park.id}/otters"
 end

private
 def otter_params
  params.permit(:able_to_work, :otter_name, :otter_age)
 end

end
