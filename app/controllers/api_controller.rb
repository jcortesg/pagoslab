class ApiController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  before_action do
    if @account = authenticate_or_request_with_http_basic do |u, p|
        Account.find_by(key: u, secret: p)
      end
    else
      request_http_basic_authentication
    end
  end

end
