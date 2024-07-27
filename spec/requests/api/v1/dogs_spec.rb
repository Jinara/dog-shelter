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

  describe "GET /show" do
    it "returns a success response" do
      dog = create(:dog)

      get api_v1_dog_path(dog.id)
      expect(response).to be_successful
    end

    it "returns a 404" do
      get api_v1_dog_path(1)
      expect(response).to be_not_found
    end
  end

  describe "POST /create" do
    it "returns a success response" do
      dog_params = { name: "Fido", breed: "Golden Retriever", status: "found" }
      expect {
        post api_v1_dogs_path, params: { dog: dog_params }
      }.to change(Dog, :count).by(1)

      expect(response).to be_successful
    end
  end

  describe "PUT /update" do
    it "returns a success response" do
      dog = create(:dog, status: :found)
      dog_params = { status: "ready" }

      put api_v1_dog_path(dog.id), params: { dog: dog_params }

      expect(response).to be_successful
      expect(Dog.ready.count).to eq(1)
    end
  end

  describe "DELETE /delete" do
    it "returns a success response" do
      dog = create(:dog, status: :found)

      expect {
        delete api_v1_dog_path(dog.id)
      }.to change(Dog, :count).by(-1)

      expect(response).to be_successful
    end
  end
end
