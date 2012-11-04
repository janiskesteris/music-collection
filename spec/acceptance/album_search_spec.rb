require 'acceptance/acceptance_helper'

feature 'Album search', %q{
  In order to search my albums
  As a user
  I want fill out and submit search form
} do

  background do
    @user = create_and_sign_in_user
  end

  scenario 'search in name' do
    Fabricate :album, user: @user, name: "First album"
    Fabricate :album, user: @user, name: "Second album"
    visit homepage
    search_album_with("album")
    within "#album-list" do
      page.should have_content("First album")
      page.should have_content("Second album")
    end
  end

  scenario 'search in description' do
    Fabricate :album, user: @user, name: "Searchable album", description: "unique description"
    visit homepage
    search_album_with("unique description")
    within "#album-list" do
      page.should have_content("Searchable album")
    end
  end

  scenario 'search in artist' do
    Fabricate :album, user: @user, name: "Searchable album", artist: "Jon Bovi"
    visit homepage
    search_album_with("Jon Bovi")
    within "#album-list" do
      page.should have_content("Searchable album")
    end
  end

  scenario 'search only within owned albums' do
    Fabricate :album, user: @user, name: "My album"
    Fabricate :album, name: "Your album"
    visit homepage
    search_album_with("album")
    within "#album-list" do
      page.should have_content("My album")
      page.should_not have_content("Your album")
    end
  end

end
