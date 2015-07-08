Rails.application.routes.draw do


  # ==========================================
  # Marketing site
  # ==========================================
  root  'pages#home'
  match '/beneficios'    => 'pages#features',      via: :get, as: :features
  match '/precios'       => 'pages#pricing',       via: :get, as: :pricing
  match '/faq'           => 'pages#faq',           via: :get, as: :faq
  match '/terminos'      => 'pages#terms',         via: :get, as: :terms
  match '/seguridad'     => 'pages#safety',        via: :get, as: :safety
  match '/privacidad'    => 'pages#privacy',       via: :get, as: :privacy

end
