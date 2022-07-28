class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    album = Album.create album_params
    redirect_to album
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def album_params
    params.require(:album).permit(:title, :image, :released, :album)
  end

end
