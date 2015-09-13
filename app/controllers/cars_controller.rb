class CarsController < ApplicationController

  def new

  end

  def create
    render plain: params[:car].inspect
  end
end
