class Api::V1::TripsController < ApplicationController
  before_action :find_trip, only: [:update, :destroy, :show]

  def index
    render json: Trip.all
  end

  def create
    @trip = Trip.create(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @trip
  end

  def destroy
    @trip.destroy
  end


  private

  def trip_params
    params.permit(:title, :date, :location, :description, :photo, :entries, :photos => [:caption, :url])
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
