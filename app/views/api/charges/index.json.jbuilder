json.array!(@api_charges) do |api_charge|
  json.extract! api_charge, :id, :amount, :currency, :source, :description
  json.url api_charge_url(api_charge, format: :json)
end
