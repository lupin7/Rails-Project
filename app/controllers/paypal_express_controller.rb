class PaypalExpressController < ApplicationController
  
  # def checkout
  #   response = EXPRESS_GATEWAY.setup_purchase(YOUR_TOTAL_AMOUNT_IN_CENTS,
  #     ip: request.remote_ip,
  #     return_url: YOUR_RETURN_URL_,
  #     cancel_return_url: YOUR_CANCEL_RETURL_URL,
  #     currency: "USD",
  #     allow_guest_checkout: true,
  #     items: [{name: "Order", description: "Order description", quantity: "1", amount: AMOUNT_IN_CENTS}]
  #   )
  #   redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  # end

  # before_filter :assigns_gateway

  # include ActiveMerchant::Billing
  # include PaypalExpressGateway
  # include PaypalExpressHelper
 
  # def checkout
  #   total_as_cents, setup_purchase_params = get_setup_purchase_params @cart, request
  #   setup_response = @gateway.setup_purchase(total_as_cents, setup_purchase_params)
  #   redirect_to @gateway.redirect_url_for(setup_response.token)
  # end
 
  # private
  #   def assigns_gateway
  #     @gateway ||= PaypalExpressGateway.new(
  #       :login => "marc_mce_2004-facilitator_api1.yahoo.com",
  #       :password => "4PGV67KVLPFEU25R",
  #       :signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31AaVq1XDWwVmLpNJ6yNsNozFheU6c",
  #     )
  #   end
end
