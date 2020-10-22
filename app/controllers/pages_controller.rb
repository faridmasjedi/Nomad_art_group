class PagesController < ApplicationController
  before_action :check_for_login, :only => [:user]
  def home
    @reviews = Review.all.shuffle
  end

  def user
  end

  def contact
  end

  def donation
  end

  def paypal
    redirect_to 'https://www.paypal.com/donate?token=BKZAFow8nWYrDJX5eZgHROSyZFUCdu5eKHRkDoBXcpE4g6D1iK4eFjySGvY7KBIeIHyNfid8dN_KcUWA'
  end

  private
  def event_user_params
    params.require(:user).permit(:numbers)
  end
end
