require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      name: 'My App',
      description: 'My app description',
      phone: '5555555555',
      website: 'http://www.myapp.com'
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do
    end
  end
end
