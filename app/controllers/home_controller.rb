class HomeController < ApplicationController
  def index
    @latest_albums = Album.order("created_at desc")
  end
end
