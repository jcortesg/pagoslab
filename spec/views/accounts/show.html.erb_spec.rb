require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      name: 'My App',
      description: 'My app description',
      phone: '5555555555',
      website: 'http://www.myapp.com'
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
