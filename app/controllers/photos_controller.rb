class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params["id"]})
  end

  def new_form
  end

  def create_row
    i = Photo.new
    i.source = params[:the_source]
    i.caption = params[:the_caption]
    i.save

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    i=Photo.find(params[:id])
    i.source = params[:the_source]
    i.caption = params[:the_caption]
    i.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    i = Photo.find(params[:id])
    i.destroy

    redirect_to("http://localhost:3000/photos")
  end

end
