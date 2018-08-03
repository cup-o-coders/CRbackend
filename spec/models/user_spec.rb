require 'rails_helper'

RSpec.describe User, type: :model do
    it "should validate name" do
        user = User.create
        expect(user.errors[:name]).to_not be_empty
    end
    it "should validate email" do
        user = User.create
        expect(user.errors[:email]).to_not be_empty
    end
    it "should validate password" do
        user = User.create
        expect(user.errors[:password]).to_not be_empty
    end
end
