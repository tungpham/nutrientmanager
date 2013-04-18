require "spec_helper"

describe MealrecipesController do
  describe "routing" do

    it "routes to #index" do
      get("/mealrecipes").should route_to("mealrecipes#index")
    end

    it "routes to #new" do
      get("/mealrecipes/new").should route_to("mealrecipes#new")
    end

    it "routes to #show" do
      get("/mealrecipes/1").should route_to("mealrecipes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mealrecipes/1/edit").should route_to("mealrecipes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mealrecipes").should route_to("mealrecipes#create")
    end

    it "routes to #update" do
      put("/mealrecipes/1").should route_to("mealrecipes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mealrecipes/1").should route_to("mealrecipes#destroy", :id => "1")
    end

  end
end
