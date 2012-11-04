require 'acceptance/acceptance_helper'

feature 'User sign up', %q{
  In order to access application features
  As a user
  I want sign up
} do

  scenario 'sign up successfully' do
    email = Faker::Internet.email
    visit root_path
    click_link('Sign up')
    page.should have_css('.new_user')

    fill_in "Email", with: email
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_button('Sign up')
    page.should have_css('.alert-success', :text => 'Welcome! You have signed up successfully.')
  end

  scenario 'fail to sign up with validation errors' do
    visit "/users/sign_up"
    click_button('Sign up')
    page.should have_css('.email', :text => "can't be blank")
    page.should have_css('.password', :text => "can't be blank")

    fill_in "Email", with: "not an email"
    click_button('Sign up')
    page.should have_css('.email', :text => "is invalid")

    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "not matching password"
    click_button('Sign up')
    page.should have_css('.password', :text => "doesn't match confirmation")
  end

  scenario 'user signs in' do
    user = Fabricate :user
    real_sign_in user.email, user.password
    page.should have_css('.alert-success', :text => "Signed in successfully.")
  end

end
