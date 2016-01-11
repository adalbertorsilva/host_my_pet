require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  context "user acesses the home page" do

    it "creates a user instace" do
        get :index
        expect(assigns(:user)).to_not be(nil)
    end
  end

  context "user logs in" do

    describe "witn a non existent user" do

      it "must return a empty user instance" do
        post :index, {email: 'email@email.com', password: '1234'}
        user = assigns(:user)
        expect(user.id).to be(nil)
      end

    end

    describe "with an already submited user" do

      it "must return fulfilled user instance" do

        user = create(:user, :test_user, password_confirmation: 'senha')
        post :index, {email: user.email, password: user.password}
        auth_user = assigns(:user)

        expect(auth_user).to_not be(nil)

      end

      it "must authenticate with user's password" do

        password = 'senha'
        user = create(:user, :test_user, password_confirmation: password)
        post :index, {email: user.email, password: password}

        expect(user.authenticate(password).id.nil? ).to be false
      end



    end


  end



end
