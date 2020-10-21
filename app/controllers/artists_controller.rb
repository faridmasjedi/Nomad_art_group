class ArtistsController < ApplicationController
  before_action :check_for_admin , :only => [:new,:edit,:destroy]
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create artist_params
    redirect_to new_role_path
  end

  def show
    @artist = Artist.find params[:id]
  end

  def edit
    @artist = Artist.find params[:id]
  end

  def update
    artist = Artist.find params[:id]
    artist.update artist_params
    redirect_to artist
  end

  def destroy
    @artist = Artist.find params[:id]
    roles = Role.where(:artist_id => params[:id])
    roles.each do |r|
        r.destroy
    end
    @artist.destroy
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :image,:about_me)
  end
end
