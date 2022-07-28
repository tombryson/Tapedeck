class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    album = Album.new(album_params)
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      album.image = req["public_id"]
      album.save
    end
    redirect_to albums_path
  end

  def edit
      @album = Album.find params[:id]
  end

  def remove_album
    @tapedeck = Tapedeck.find params[:id]
    @album = Album.find params[:album_id]
    @tapedeck.album = nil
    redirect_to @tapedeck
  end

  def update
    album = Album.find(params[:id])
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      album.image = req["public_id"]
    end
    album.update_attributes(album_params)
    album.save
    redirect_to(album_path(album))
  end

  def show
    @album = Album.find params[:id]
  end

  def destroy
    album = Album.find params[:id]
    album.destroy
    redirect_to albums_path
  end

  private
  def album_params
    params.require(:album).permit(:title, :image, :released, :album)
  end
end
