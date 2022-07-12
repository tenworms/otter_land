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





end
