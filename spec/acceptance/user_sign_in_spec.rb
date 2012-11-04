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

end
