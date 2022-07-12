class ParkOttersController < ApplicationController
  def index
    park = Park.find(params[:park_id])
    @otters = park.otters
  end

end
#<p>Created At: <%= @otter.created_at %></p>
#<p>Updated At: <%= @otter.updated_at %></p>
