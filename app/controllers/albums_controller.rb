class AlbumsController < ApplicationController
  load_and_authorize_resource :user, except: :show
  load_and_authorize_resource through: :user, except: :show
  load_and_authorize_resource only: :show

  def index
    @search = @user.albums.search(params[:search])
    @albums = @search.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def edit
  end

  def create
    @album = @user.albums.new(params[:album])
    if @album.save
      redirect_to @album, notice: 'Album was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @album = @user.albums.find(params[:id])

    if @album.update_attributes(params[:album])
      redirect_to @album, notice: 'Album was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    msg = @album.destroy ? {notice: "Album was successfully deleted!"} : {alert: "Failed to delete album"}
    redirect_to user_albums_path, msg
  end
end
