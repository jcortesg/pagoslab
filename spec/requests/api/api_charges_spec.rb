require 'rails_helper'

RSpec.describe "Api::Charges", type: :request do
  describe "GET /api/charges" do
    it "should responds with 200 code" do
      get api_charges_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/charges/:id" do
    let(:valid_attributes) {
      {amount: 100, currency: 'usd', source: '12345678', description: 'Charged for test@test.com'}
    }

    it "should responds with 200 code" do
      @charge = Api::Charge.create! valid_attributes
      get api_charge_path(@charge), format: 'json'
      expect(response).to have_http_status(200)
    end

    it "charge does not exist responds not found 404" do
      get api_charge_path(1), { format: 'json'  }
      expect(response).to be_not_found
    end
  end

  describe "POST /api/charges" do
    let(:valid_attributes) {
      {amount: 100, currency: 'usd', source: '12345678', description: 'Charged for test@test.com'}
    }
    let(:invalid_attributes) {
      {amount: nil, currency: nil, source: nil, description: nil}
    }

    context "with valid params" do
      it "works with valid params" do
        post api_charges_path, { api_charge: valid_attributes, format: 'json'  }
        expect(response).to have_http_status(201)
      end
    end

    context "with invalid params" do
      it "works with valid params" do
        post api_charges_path, { api_charge: invalid_attributes, format: 'json'  }
        expect(response).to have_http_status(422)
      end
    end

  end
  
  describe "DELETE /api/charges/:id" do
    let(:valid_attributes) {
      {amount: 100, currency: 'usd', source: '12345678', description: 'Charged for test@test.com'}
    }

    it "should responds with 200 code" do
      @charge = Api::Charge.create! valid_attributes
      delete api_charge_path(@charge), format: 'json'
      expect(response).to have_http_status(204)
    end

    it "charge does not exist responds not found 404" do
      delete api_charge_path(1), { format: 'json'  }
      expect(response).to be_not_found
    end
  end
end
