require 'rails_helper'

RSpec.describe QueriesController, type: :controller do

  describe "GET #request" do
    it "returns http success" do
      get :request
      expect(response).to have_http_status(:success)
    end
  end

end
