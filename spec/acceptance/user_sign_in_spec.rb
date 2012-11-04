require 'acceptance/acceptance_helper'

feature 'User sign in', %q{
  In order to access application features
  As a user
  I want sign in
} do

  scenario 'user signs in' do
    user = Fabricate :user
    real_sign_in user.email, user.password
    page.should have_css('.alert-success', :text => "Signed in successfully.")
  end

  scenario 'user fails to sign in' do
    real_sign_in "non-existing@email.com", "password"
    page.should have_css('.alert-error', :text => "Invalid email or password.")
  end

  scenario 'redirect to sign in form when access restricted for visitor' do
    visit edit_album_path(Fabricate :album)
    page.should have_css('.alert-error', :text => "You are not authorized to access this page.")
    find("h2").should have_content "Sign in"
  end

end
