class OttersController < ApplicationController


  def index
    @otters = Otter.all
  end

  def show
    @otter = Otter.find(params[:id])
  end

  def edit
    @otter = Otter.find(params[:id])
  end 


end
