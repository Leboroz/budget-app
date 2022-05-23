require 'rails_helper'

RSpec.describe "Groups", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/groups/index"
      expect(response).to have_http_status(:success)
    end
  end

end
