class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login, :only => [:new_event,:create_event]
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def new_event
    @user = @current_user  
  end

  def create_event
    @user = @current_user
    @user.events.destroy_all
    params[:numbers].uniq.each do |e|
      event = Event.find e
      @user.events << event
    end
    redirect_to '/user'
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
