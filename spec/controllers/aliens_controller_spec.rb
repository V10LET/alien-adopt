require 'rails_helper'

RSpec.describe AliensController, type: :controller do
  describe "GET #index" do
    it "returns HTTP success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #show" do
  #   it "returns HTTP success" do
  #     get :show, :id @alien
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end