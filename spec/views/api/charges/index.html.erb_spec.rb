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
    skip('JSON view / Pending test');
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
