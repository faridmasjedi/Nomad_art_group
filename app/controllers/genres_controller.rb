class GenresController < ApplicationController
  before_action :check_for_admin
  def new
    @genre = Genre.new
  end
  def create
    genre = Genre.create genre_params
    redirect_to new_event_path
  end

  private
  def genre_params
    params.require(:genre).permit(:title)
  end
end
