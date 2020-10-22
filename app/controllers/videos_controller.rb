class VideosController < ApplicationController
  def new
    @video = Video.new
  end
  def create
    video = Video.create video_params
    event = Event.find video_params[:event_id]
    redirect_to event
  end

  def show
    @video = Video.find params[:id]
  end

  def destroy
    video = Video.find params[:id]
    event = Event.find video.event_id
    video.destroy
    redirect_to event
  end

  private
  def video_params
    params.require(:video).permit(:vid,:event_id)
  end
end
