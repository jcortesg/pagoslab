require 'rails_helper'

RSpec.describe "api/charges/show", type: :view do
  before(:each) do
    @api_charge = assign(:api_charge, Api::Charge.create!(
      :amount => 1,
      :currency => "usd",
      :source => "Source",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    skip('JSON view / Pending test');
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Currency/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Description/)
  end
end
