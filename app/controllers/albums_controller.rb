class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    album = Album.create album_params
    @current_user.albums << album
    redirect_to album_path
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
