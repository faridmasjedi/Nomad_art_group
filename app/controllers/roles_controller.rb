class RolesController < ApplicationController
  before_action :check_for_admin , :only => [:new,:destroy,:show]
  def new
    @role = Role.new
  end
  def create
    role = Role.create role_params
    event = Event.find role_params[:event_id]
    redirect_to event
  end

  def show
    @role = Role.find params[:id]
  end

  def destroy
    @role = Role.find params[:id]
    id = Role.find(params[:id]).event_id
    @role.delete
    # artist.destroy

    redirect_to "/events/#{id}"
  end

  private
  def role_params
    params.require(:role).permit(:title,:event_id,:artist_id)
  end
end
