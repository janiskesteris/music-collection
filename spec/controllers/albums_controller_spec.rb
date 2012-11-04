require 'spec_helper'

describe AlbumsController do
  let(:album) { Fabricate(:album) }

  describe "Ability" do

    context "as user I" do
      before(:each) do
        @user = create_and_sign_in_user
      end

      it "should be able to see other user album show page" do
        get :show, user_id: album.user, id: album
        response.response_code.should == 200
      end

      it "should not be able to access other users albums edit page" do
        get :edit, user_id: album.user, id: album
        response.response_code.should == 403
      end

      it "should not be able to access other users albums index page" do
        get :index, user_id: album.user
        response.response_code.should == 403
      end

      it "should not be able to update other users albums" do
        post :update, user_id: album.user, id: album.id
        response.response_code.should == 403
      end

      it "should not be able to create album for another user" do
        post :create, user_id: album.user
        response.response_code.should == 403
      end

      it "should not be able to delete other user albums" do
        post :destroy, user_id: album.user, id: album.id
        response.response_code.should == 403
      end

    end

    context "as visitor I" do
      it "should not be able to access other users albums edit page" do
        get :edit, user_id: album.user, id: album
        response.response_code.should == 403
      end

      it "should not be able to access other users albums index page" do
        get :index, user_id: album.user
        response.response_code.should == 403
      end

      it "should not be able to update other users albums" do
        post :update, user_id: album.user, id: album.id
        response.response_code.should == 403
      end

      it "should not be able to create album for another user" do
        post :create, user_id: album.user
        response.response_code.should == 403
      end

      it "should not be able to delete other user albums" do
        post :destroy, user_id: album.user, id: album.id
        response.response_code.should == 403
      end

      it "should be able to see other user album show page" do
        get :show, user_id: album.user, id: album
        response.response_code.should == 200
      end

    end

  end
end