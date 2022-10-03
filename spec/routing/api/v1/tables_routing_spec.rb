require "rails_helper"

RSpec.describe Api::V1::TablesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/tables").to route_to("api/v1/tables#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/tables/1").to route_to("api/v1/tables#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/tables").to route_to("api/v1/tables#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/tables/1").to route_to("api/v1/tables#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/tables/1").to route_to("api/v1/tables#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/tables/1").to route_to("api/v1/tables#destroy", id: "1")
    end
  end
end
