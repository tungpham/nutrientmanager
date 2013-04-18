require "spec_helper"

describe UserprofilesController do
  describe "routing" do

    it "routes to #index" do
      get("/userprofiles").should route_to("userprofiles#index")
    end

    it "routes to #new" do
      get("/userprofiles/new").should route_to("userprofiles#new")
    end

    it "routes to #show" do
      get("/userprofiles/1").should route_to("userprofiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/userprofiles/1/edit").should route_to("userprofiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/userprofiles").should route_to("userprofiles#create")
    end

    it "routes to #update" do
      put("/userprofiles/1").should route_to("userprofiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/userprofiles/1").should route_to("userprofiles#destroy", :id => "1")
    end

  end
end
