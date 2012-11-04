module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def homepage
    "/"
  end

  def user_albums user
    "/users/#{user.id}/albums"
  end

  def edit_album_path album
    "/users/#{album.user_id}/albums/#{album.id}/edit"
  end

  def album_path album
    "/albums/#{album.id}"
  end

end

RSpec.configuration.include NavigationHelpers, :type => :acceptance