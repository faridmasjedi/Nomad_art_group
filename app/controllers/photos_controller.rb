class PhotosController < ApplicationController
  before_action :check_for_admin, :except => [:index]
  def new
    @photo = Photo.new
  end

  def index
    @photos = Photo.all
  end

  def create
    photo = Photo.create photo_params
    event = Event.find photo_params[:event_id]
    redirect_to event
  end
  def show
    @photo = Photo.find params[:id]
  end

  def destroy
    photo = Photo.find params[:id]
    event = Event.find photo.event_id
    photo.destroy
    redirect_to event
  end

  private
  def photo_params
    params.require(:photo).permit(:img,:event_id)
  end
end
