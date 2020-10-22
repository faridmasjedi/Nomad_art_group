class EventsController < ApplicationController
  before_action :check_for_admin, :only => [:new,:edit,:destroy,:roles]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  def create
    event = Event.create event_params
    redirect_to event
  end

  def edit
    @event = Event.find params[:id]
  end
  def update
    event = Event.find params[:id]
    event.update event_params
    redirect_to event
  end

  def show

    @event = Event.find params[:id]
    @roles = @event.roles
  end

  def roles
    event = Event.find params[:id]
    @roles = event.roles
  end
  
  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:title,:poster,:date,:duration,:description,:genre_id,:price,:venue,:whats_on)
  end
end
