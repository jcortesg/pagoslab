FactoryGirl.define do
  factory :api_charge, :class => 'Api::Charge' do
    amount 1
    currency "usd"
    source "12345678192920"
    description "Charge for test@example.com"
  end
end
