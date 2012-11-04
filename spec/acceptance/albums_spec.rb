require 'acceptance/acceptance_helper'

feature 'Albums', %q{
  In order to manage
  As a user
  I want view, create, update, delete my albums
} do

  background do
    @user = create_and_sign_in_user
  end

  scenario 'visit and see my album list' do
    Fabricate(:album, user: @user, name: "My own album 1")
    Fabricate(:album, user: @user, name: "My own album 2")
    visit root_path
    click_link "My albums"
    within "table" do
      page.should have_content("My own album 1")
      page.should have_content("My own album 2")
    end
  end

  scenario 'create new album' do
    Fabricate :genre, name: "Rock"
    visit user_albums_path(@user)
    click_link "New"
    page.should have_css("#new_album")
    fill_in "Name", with: Faker::Lorem.word
    fill_in "Artist", with: Faker::Name.name
    fill_in "Label", with: Faker::Company.name
    fill_in "Released on", with: 1.month.ago.to_date.to_s
    select('Rock', :from => 'Genre')
    fill_in "Description", with: Faker::Lorem.paragraph
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/test.jpg")
    click_button "Create Album"
    page.should have_css(".alert-success", text: "Album was successfully created.")
  end

  scenario 'see validations when creation fails' do
    visit new_user_album_path(@user)
    click_button "Create Album"
    page.should have_content("can't be blank")
  end

  scenario 'update existing album' do
    Fabricate(:album, user: @user, name: "My own album")
    visit user_albums_path(@user)
    within(:xpath, "//*[text()='My own album']/../..") do
      click_link "Edit"
    end
    fill_in "Name", with: "Changed name"
    click_button "Update Album"
    page.should have_css(".alert-success", text: "Album was successfully updated.")
  end

  scenario 'see validations when update fails' do
    album = Fabricate(:album, user: @user, name: "My own album")
    visit edit_user_album_path(@user, album)
    fill_in "Name", with: ""
    click_button "Update Album"
    page.should have_content("can't be blank")
  end

  scenario 'save image' do
    album = Fabricate(:album, user: @user, name: "My own album")
    visit edit_user_album_path(album.user, album)
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/test.jpg")
    click_button "Update Album"
    page.should have_selector("img[src$='test.jpg']")
  end

  scenario 'see album attributes' do
    album = Fabricate(:album, user: @user)
    visit album_path(album)
    [:name, :artist, :label, :genre_name, :description].each do |attribute|
      page.should have_content(album.send(attribute))
    end
  end

  scenario 'delete album', js: true do
    album = Fabricate(:album, user: @user, name: "My own album")
    visit album_path(album)
    click_link "Destroy"
    page.driver.browser.switch_to.alert.accept
    page.should have_css(".alert-success", text: "Album was successfully deleted!")
    visit user_albums_path(@user)
    page.should_not have_content("My own album")
  end

end
