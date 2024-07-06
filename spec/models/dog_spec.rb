require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      dog = FactoryBot.build(:dog)
      expect(dog).to be_valid
    end

    it "is not valid without a name" do
      dog = FactoryBot.build(:dog, name: nil)
      expect(dog).not_to be_valid
    end

    it "is not valid without a breed" do
      dog = FactoryBot.build(:dog, breed: nil)
      expect(dog).not_to be_valid
    end
  end
end
