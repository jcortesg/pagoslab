require 'rails_helper'

RSpec.describe Api::Charge, type: :model do
  it "has a valid factory" do
    expect(build(:api_charge)).to be_valid
  end

  it "has a valid factory" do
    expect(build(:api_charge, amount: nil)).to_not be_valid
  end

  it "is invalid withut amount" do
    expect(build(:api_charge, amount: nil)).to_not be_valid
  end

  it "is invalid with incorrect amount value" do
    expect(build(:api_charge, amount: 'value')).to_not be_valid
  end

  it "is invalid withut currency" do
    expect(build(:api_charge, currency: nil)).to_not be_valid
  end

  it "is invalid with incorrect currency value" do
    expect(build(:api_charge, currency: 'value')).to_not be_valid
  end

  it "is invalid withut source" do
    expect(build(:api_charge, source: nil)).to_not be_valid
  end


end
