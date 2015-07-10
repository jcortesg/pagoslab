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

  it "renders attributes in <JSON OBject>" do
    render
    parsed_rendered = JSON.parse(rendered)
    expect(parsed_rendered['amount']).to match(1)
    expect(parsed_rendered['currency']).to match("usd")
    expect(parsed_rendered['source']).to match("Source")
    expect(parsed_rendered['description']).to match("Description")
  end
end
