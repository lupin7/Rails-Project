class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_cart
    if session[:order_id]
      @current_cart ||= Order.find(session[:order_id])
    end
    if session[:order_id].nil?
      @current_cart = Order.create!
      session[:order_id] = @current_cart.id
    end
    @current_cart
  end 

  private
    def admin_authenticate
  	  authenticate_or_request_with_http_basic do |username, password|
  	    username == 'admin' && password == 'secret'
  	  end
    end
end
