class PartsController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @part = @car.comments.create(part_params)
    redirect_to car_path(@car)
  end

  private
    def part_params
      params.require(:part).permit(:name, :quantity)
    end

end
