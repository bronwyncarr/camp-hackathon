class SpotsController < ApplicationController
  before_action :set_spot, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @spots = Spot.all.where(user_id: current_user[:id])
  end

  def show; end

  def new
    @spot = Spot.new
  end

  def edit; end

  def create
    @spot = current_user.spots.new(post_params)

    respond_to do |format|
      if @spot.save!
        format.html { redirect_to @spot, notice: 'Spot was successfully created.' }
        format.json { render :show, status: :created, location: @spot }
      else
        format.html { render :new }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def post_params
    params.require(:spot).permit :name, :description, :max_campers, :has_power, :has_water, :has_toilet, :has_shower, :photo, address_attributes: %i[street_number street_name postcode state]
  end
end
