class ReviewsController < ApplicationController
  before_action :check_for_admin, :only => [:new]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end
  def create
    review = Review.create review_params
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:title, :link, :description, :img)
  end
end
