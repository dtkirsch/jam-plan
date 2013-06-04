require "spec_helper"

describe JamsUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/jams_users").should route_to("jams_users#index")
    end

    it "routes to #new" do
      get("/jams_users/new").should route_to("jams_users#new")
    end

    it "routes to #show" do
      get("/jams_users/1").should route_to("jams_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jams_users/1/edit").should route_to("jams_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jams_users").should route_to("jams_users#create")
    end

    it "routes to #update" do
      put("/jams_users/1").should route_to("jams_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jams_users/1").should route_to("jams_users#destroy", :id => "1")
    end

  end
end
