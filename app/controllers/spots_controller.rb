class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def show;
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_spot
      @spot = Spot.find(params[:id])
    end
end
