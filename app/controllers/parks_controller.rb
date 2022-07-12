class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
  end

  def create
    Park.create(title: params[:title], hiring_workers: params[:hiring_workers], number_of_workers: params[:number_of_workers])
    redirect_to '/parks'
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    park = Park.find(params[:id])
    park.update(title: params[:title], hiring_workers: params[:hiring_workers], number_of_workers: params[:number_of_workers])
    park.save
    redirect_to '/parks'
  end
end
