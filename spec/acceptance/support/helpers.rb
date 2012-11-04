module HelperMethods
  # Put helper methods you need to be available in all acceptance specs here.

  def real_sign_in email, password
    visit homepage
    click_link 'Sign in'
    fill_in "Email", with: email
    fill_in "Password", with: password
    click_button "Sign in"
  end

  def search_album_with query
    within "#album_search" do
      fill_in "appendedInputButton", with: query
      click_button "Search"
    end
  end

  def create_and_sign_in_user
    user = Fabricate(:user)
    login_as(user, :scope => :user)
    user
  end

end

RSpec.configuration.include HelperMethods, :type => :acceptance