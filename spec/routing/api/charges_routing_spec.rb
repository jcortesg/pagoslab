require "rails_helper"

RSpec.describe Api::ChargesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/charges").to route_to("api/charges#index", format: 'json')
    end

    it "routes to #new" do
      expect(:get => "/api/charges/new").to_not route_to('/api/charges#new')
    end

    it "routes to #show" do
      expect(:get => "/api/charges/1").to route_to("api/charges#show", :id => "1", :format => 'json')
    end

    it "routes to #edit" do
      expect(:get => "/api/charges/1/edit").to_not be_routable
    end

    it "routes to #create" do
      expect(:post => "/api/charges").to route_to("api/charges#create", format: 'json')
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/charges/1").to_not be_routable
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/charges/1").to_not be_routable
    end

    it "routes to #destroy" do
      expect(:delete => "/api/charges/1").to route_to("api/charges#destroy", :id => "1", :format => 'json')
    end

  end
end
