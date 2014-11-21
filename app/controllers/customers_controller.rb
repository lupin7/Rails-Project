class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :postal_code, :email, :province_id)
    end
end

