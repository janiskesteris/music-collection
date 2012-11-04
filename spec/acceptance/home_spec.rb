require 'acceptance/acceptance_helper'

feature 'Home', %q{
  In order to view latest albums in application
  As a visitor
  I want to visit the homepage
} do

  scenario 'view latest album list' do
    visit root_path
    page.should_not have_content("Latest albums")
    Fabricate :album, name: "Newer album"
    Fabricate :album, name: "Older album", created_at: 1.day.ago
    visit root_path
    find(".thumbnails li:first").should have_content("Newer album")
    find(".thumbnails li:last").should have_content("Older album")
  end

  scenario 'only visitors see big sign up button' do
    visit root_path
    page.should have_content("Sign up and start collecting")
    create_and_sign_in_user
    visit root_path
    page.should_not have_content("Sign up and start collecting")
  end

end
