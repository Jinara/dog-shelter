require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /index" do
    it "returns a success response" do
      get api_v1_dogs_path
      expect(response).to be_successful
    end

    it "returns a success response" do
      dog = create(:dog)

      get api_v1_dogs_path

      expect(response).to be_successful

      response_body = JSON.parse(response.body)
      expect(response_body.count).to eq(1)
    end
  end
end
