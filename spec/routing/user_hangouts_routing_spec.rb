require "rails_helper"

RSpec.describe UserHangoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_hangouts").to route_to("user_hangouts#index")
    end

    it "routes to #new" do
      expect(:get => "/user_hangouts/new").to route_to("user_hangouts#new")
    end

    it "routes to #show" do
      expect(:get => "/user_hangouts/1").to route_to("user_hangouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_hangouts/1/edit").to route_to("user_hangouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_hangouts").to route_to("user_hangouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_hangouts/1").to route_to("user_hangouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_hangouts/1").to route_to("user_hangouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_hangouts/1").to route_to("user_hangouts#destroy", :id => "1")
    end

  end
end
