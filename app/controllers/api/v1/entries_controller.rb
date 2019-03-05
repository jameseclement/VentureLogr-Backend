class Api::V1::EntriesController < ApplicationController
  before_action :find_entry, only: [:update, :destroy, :show]



  def index
    render json: Entry.all
  end

  def create
    @entry = Entry.create(entry_params)
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @entry.update(entry_params)
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @entry
  end

  def destroy
    @entry.destroy
  end


  private

  def entry_params
    params.require(:entry).permit(:title, :date, :story, :trip_id, :photos => [:caption, :url, :entry_id])
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end

end
