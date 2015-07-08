require 'rails_helper'

RSpec.describe "api/charges/new", type: :view do
  before(:each) do
    assign(:api_charge, Api::Charge.new(
      :amount => 1,
      :currency => "MyString",
      :source => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new api_charge form" do
    skip('JSON view / Pending test');
    render

    assert_select "form[action=?][method=?]", api_charges_path, "post" do

      assert_select "input#api_charge_amount[name=?]", "api_charge[amount]"

      assert_select "input#api_charge_currency[name=?]", "api_charge[currency]"

      assert_select "input#api_charge_source[name=?]", "api_charge[source]"

      assert_select "input#api_charge_description[name=?]", "api_charge[description]"
    end
  end
end
