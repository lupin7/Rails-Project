class CustomersController < InheritedResources::Base
  before_action :set_all_categories
  before_action :set_provinces, only: [:new, :edit]

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        session[:customer_now] = @customer.id
        format.html { redirect_to checkout_path }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address, :city, :postal_code, :email, :province_id)
    end

    def set_all_categories
      @categorize = Category.all
    end

    def set_provinces
      @provinces = Province.order(:name)
    end
end

