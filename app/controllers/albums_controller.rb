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
  end

  private
  def album_params
    params.require(:album).permit(:title, :image, :released, :album)
  end

end
