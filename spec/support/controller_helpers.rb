module ControllerHelpers

  def create_and_sign_in_user
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = Fabricate(:user) and sign_in(user)
    user
  end

end

RSpec.configuration.include ControllerHelpers, :type => :controller