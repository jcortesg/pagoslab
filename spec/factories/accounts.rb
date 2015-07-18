FactoryGirl.define do
  factory :account do
    key "12345678"
    secret "1234567812345678"
    name "App"
    description "Description for App"
    website "http://www.myapp.com"
    phone "3055555555"
  end
end
