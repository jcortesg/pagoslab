require 'rails_helper'

RSpec.describe Account, type: :model do

  it "has a valid factory" do
    expect(build(:account)).to be_valid
  end

  it "is invalid without name" do
    expect(build(:account, name: nil)).to_not be_valid
  end

  it "is invalid without phone" do
    expect(build(:account, phone: nil)).to_not be_valid
  end

  it "phone should have a valid format" do
    expect(build(:account, phone: 'hola')).to_not be_valid
  end

  it "is invalid without website" do
    expect(build(:account, website: nil)).to_not be_valid
  end

  it "website should have a valid format" do
    expect(build(:account, website: 'hola')).to_not be_valid
  end

  it "is invalid without key" do
    expect(build(:account, key: nil)).to be_valid
  end

  it "is invalid without secret" do
    expect(build(:account, secret: nil)).to be_valid
  end

  it "key should have at least 8 characters" do
    expect(build(:account, key: '123')).to_not be_valid
  end

  it "secret should have at least 16 characters" do
    expect(build(:account, secret: '123')).to_not be_valid
  end

  it "secret should have at least 16 characters" do
    expect(build(:account, secret: nil, key: nil)).to be_valid
  end

  it "Should be unique" do
    @account = create(:account, key: '12345678', secret: '1234567812345678')
    expect(build(:account, key: '12345678', secret: '1234567812345678')).to_not be_valid
  end

end
