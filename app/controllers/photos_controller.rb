class PhotosController < ApplicationController

  def index
    @photos =Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo =Photo.create(photo_params)
    redirect_to @photo
  end

  private

  def photos_params
    params.require(:photo).permit(:title, :description)
  end

end
