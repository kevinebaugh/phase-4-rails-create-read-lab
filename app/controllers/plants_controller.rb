class PlantsController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create
    plant = Plant.create(allowed_params)
    render json: plant, status: :created
  end

  private

  def allowed_params
    params.permit(:name, :image, :price)
  end
end
