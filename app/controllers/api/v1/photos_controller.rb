class Api::V1::PhotosController < ApplicationController
  before_action :find_photo, only: [:update, :destroy, :show]

  def index
    render json: Photo.all
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.image.attach(params[:image])
    if @photo.save
      render json: @photo, status: :accepted
    else
      render json: { errors: @photo.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @photo.update(photo_params)
    if @photo.save
      render json: @photo, status: :accepted
    else
      render json: { errors: @photo.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @photo
  end

  def destroy
    @photo.destroy
  end


  private

  def photo_params
    params.permit(:caption, :url, :entry_id)
    # params.require(:photo).permit(:caption, :url, :entry_id, :image)
  end

  def find_photo
    @photo = Photo.find(params[:id])
  end


end
