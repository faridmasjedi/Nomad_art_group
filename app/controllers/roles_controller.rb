class RolesController < ApplicationController
  def new
    @role = Role.new
  end
  def create
    role = Role.create role_params
    event = Event.find role_params[:event_id]
    redirect_to event
  end

  def index
    @roles = Role.all
  end

  def show
    @role = Role.find params[:id]
  end

  def destroy
    role = Role.find params[:id]
    role.destroy
    redirect_to roles_path
  end

  private
  def role_params
    params.require(:role).permit(:title,:event_id,:artist_id)
  end
end
