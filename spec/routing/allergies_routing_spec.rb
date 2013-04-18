require "spec_helper"

describe AllergiesController do
  describe "routing" do

    it "routes to #index" do
      get("/allergies").should route_to("allergies#index")
    end

    it "routes to #new" do
      get("/allergies/new").should route_to("allergies#new")
    end

    it "routes to #show" do
      get("/allergies/1").should route_to("allergies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/allergies/1/edit").should route_to("allergies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/allergies").should route_to("allergies#create")
    end

    it "routes to #update" do
      put("/allergies/1").should route_to("allergies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/allergies/1").should route_to("allergies#destroy", :id => "1")
    end

  end
end
