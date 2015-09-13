class CarsController < ApplicationController

  def new

  end

  def create
    @car = Car.new(car_params)

    @car.save
    redirect_to @car
  end

  def car_params
    params.require(:car).permit(:name, :description)
  end
end
