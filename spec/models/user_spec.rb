require 'rails_helper'

RSpec.describe User, type: :model do
  describe "sinup validations" do

    it "has a required name" do
      expect(build(:user, :test_user, name: nil)).to_not be_valid
    end

    it "has a required gender" do
      expect(build(:user, :test_user, gender: nil)).to_not be_valid
    end

    it "has a required phone" do
      expect(build(:user, :test_user, phone: nil)).to_not be_valid
    end

    it "has a required email" do
      expect(build(:user, :test_user, email: nil)).to_not be_valid
    end

    it "has a required password" do
      expect(build(:user, :test_user, password: nil)).to_not be_valid
    end

    it "has a confirmed password" do
      user = build(:user, :test_user)
      user.password_confirmation = user.password
      expect(user).to be_valid
    end

    it "has a required password confirmation" do
      expect(build(:user, :test_user, password_confirmation: nil)).to_not be_valid
    end

    it "has a unique email" do

      create(:user, :test_user, password_confirmation: "senha")
      expect(build(:user, :test_user, password_confirmation: "senha")).to_not be_valid
    end

    it "has a encrypted password" do
      user = build(:user, :test_user)
      password = user.password
      user.password_confirmation = password
      user.save
      expect(user.password).to_not be eq(password)
    end

  end

end
