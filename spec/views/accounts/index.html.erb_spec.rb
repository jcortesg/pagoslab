require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        name: 'My App',
        description: 'My app description',
        phone: '5555555555',
        website: 'http://www.myapp.com',
        key: '12345678',
        secret: '1234567812345678'
      ),
      Account.create!(
        name: 'My App 2',
        description: 'My app description 2',
        phone: '5555555555',
        website: 'http://www.myapp2.com'
      )
    ])
  end

  it "renders a list of accounts" do
    render
  end
end
