require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  describe "GET /accounts" do
    context "with AUTH" do
      it "works! (now write some real specs)" do
        get accounts_path
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "POST /accounts" do

    let(:valid_attributes) {
      {name: 'My App', description: 'My app 2', phone: '5555555555', website: 'http://www.myapp.com'}
    }

    context "with AUTH" do
      it "works! (now write some real specs)" do
        post accounts_path, { account: valid_attributes }
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "PUT /accounts" do

    let(:valid_attributes) {
      {name: 'My App', description: 'My app 2', phone: '5555555555', website: 'http://www.myapp.com'}
    }

    let(:new_attributes) {
      {name: 'My App 2', description: 'My app 2 Description', phone: '5555555555', website: 'http://www.myapp2.com'}
    }

    context "with AUTH" do
      it "works! (now write some real specs)" do
        @account = Account.create! valid_attributes
        put account_path(@account), {account: new_attributes}
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "DELETE /accounts/:id" do

    let(:valid_attributes) {
      {name: 'My App', description: 'My app 2', phone: '5555555555', website: 'http://www.myapp.com'}
    }

    context "with AUTH" do
      it "works! (now write some real specs)" do
        @account = Account.create! valid_attributes
        delete account_path(@account)
        expect(response).to have_http_status(302)
      end
    end
  end

end
