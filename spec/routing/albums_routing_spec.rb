require "spec_helper"

describe AlbumsController do
  describe "routing" do

    it "routes to #index" do
      get("/users/1/albums").should route_to("albums#index", user_id: "1")
    end

    it "routes to #new" do
      get("/users/1/albums/new").should route_to("albums#new", user_id: "1")
    end

    it "routes to #show" do
      get("/albums/1").should route_to("albums#show", id: "1")
    end

    it "routes to #edit" do
      get("/users/1/albums/1/edit").should route_to("albums#edit", user_id: "1", id: "1")
    end

    it "routes to #create" do
      post("/users/1/albums").should route_to("albums#create", user_id: "1")
    end

    it "routes to #update" do
      put("/users/1/albums/1").should route_to("albums#update", user_id: "1", id: "1")
    end

    it "routes to #destroy" do
      delete("/users/1/albums/1").should route_to("albums#destroy", user_id: "1", id: "1")
    end

  end
end
