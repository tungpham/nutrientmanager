require "spec_helper"

describe MealplansController do
  describe "routing" do

    it "routes to #index" do
      get("/mealplans").should route_to("mealplans#index")
    end

    it "routes to #new" do
      get("/mealplans/new").should route_to("mealplans#new")
    end

    it "routes to #show" do
      get("/mealplans/1").should route_to("mealplans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mealplans/1/edit").should route_to("mealplans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mealplans").should route_to("mealplans#create")
    end

    it "routes to #update" do
      put("/mealplans/1").should route_to("mealplans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mealplans/1").should route_to("mealplans#destroy", :id => "1")
    end

  end
end
