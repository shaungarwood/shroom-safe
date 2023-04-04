require "rails_helper"

RSpec.describe GrainJarsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/grain_jars").to route_to("grain_jars#index")
    end

    it "routes to #new" do
      expect(get: "/grain_jars/new").to route_to("grain_jars#new")
    end

    it "routes to #show" do
      expect(get: "/grain_jars/1").to route_to("grain_jars#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/grain_jars/1/edit").to route_to("grain_jars#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/grain_jars").to route_to("grain_jars#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/grain_jars/1").to route_to("grain_jars#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/grain_jars/1").to route_to("grain_jars#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/grain_jars/1").to route_to("grain_jars#destroy", id: "1")
    end
  end
end
