require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do

    it "creates a user instace" do
        get :index
        expect(assigns(:user)).to_not be(nil)
    end

  end
end
