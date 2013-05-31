require "spec_helper"

describe JamsController do
  describe "routing" do

    it "routes to #index" do
      get("/jams").should route_to("jams#index")
    end

    it "routes to #new" do
      get("/jams/new").should route_to("jams#new")
    end

    it "routes to #show" do
      get("/jams/1").should route_to("jams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jams/1/edit").should route_to("jams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jams").should route_to("jams#create")
    end

    it "routes to #update" do
      put("/jams/1").should route_to("jams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jams/1").should route_to("jams#destroy", :id => "1")
    end

  end
end
