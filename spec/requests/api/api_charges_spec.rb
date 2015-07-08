require 'rails_helper'

RSpec.describe "Api::Charges", type: :request do
  describe "GET /api_charges" do
    it "works! (now write some real specs)" do
      get api_charges_path
      expect(response).to have_http_status(200)
    end
  end
end
