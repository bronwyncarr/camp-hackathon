class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: :page

  def index
    @spots = Spot.all
  end

  def show;
  end

private
  def set_spot
      @spot = Spot.find(params[:id])
    end
end
