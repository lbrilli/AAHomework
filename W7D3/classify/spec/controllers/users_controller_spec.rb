require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "should render the new template" do
        get :new
        expect(response).to render_template(:new)
    end
  end

  describe "GET #show" do
    it "should render the show template" do
      get :show
      expect(response).to render_template(:show)
    end
  end

  describe "POST #create" do
  end

end
