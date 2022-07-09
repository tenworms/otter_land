class OttersController < ApplicationController


  def index
    @otters = Otter.all
  end


end
