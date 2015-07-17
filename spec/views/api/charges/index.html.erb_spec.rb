require 'rails_helper'

RSpec.describe "api/charges/index", type: :view do
  before(:each) do
    assign(:api_charges, [
      Api::Charge.create!(
        :amount => 1,
        :currency => "usd",
        :source => "Source",
        :description => "Description"
      ),
      Api::Charge.create!(
        :amount => 1,
        :currency => "usd",
        :source => "Source",
        :description => "Description"
      )
    ])
  end

  it "renders a list of api/charges" do
    render
    parsed_rendered = JSON.parse(rendered)
    amounts = parsed_rendered.map{ |charge| charge['amount']}
    expect(parsed_rendered.count).to eq(2)
  end
end
