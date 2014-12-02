class StorefrontController < ApplicationController
  before_action :set_product, only: [:show]
  # before_action :set_category
  before_action :set_all_categories
  before_action :set_all_products  

  def index
  	@categories = Category.order(:name).limit(3)
  end

  def show
  end

  def show_all
    @products = Product.page(params[:page]).per(3)
  end

  def search      
  end  

  def search_results    
    search = '%' + params[:search] + "%"
    @found_products = Product.where("name LIKE ? OR description LIKE ?",
                                     search, search)
    # @found_products = Product.search_for(params[:search])
  end

  def search_by_category
  end  

  def search_results_by_category
    category = params[:category_chosen]
    search = '%' + params[:search] + "%"
    @found_products = Product.where("category_id=#{category} AND
                                     (name LIKE ? OR description LIKE ?)",
                                     search, search)
  end

  def show_by_category
    @category = Category.find(params[:id])
  end

  def about
    @about = About.first
  end

  def contact
    @about = About.first
  end

  def featured_products
    @on_sale = Product.where('sale_price NOT NULL').limit(1).page(params[:page]).per(1)
    @new_products = Product.order(:created_at).limit(2) # .page(params[:page]).per(1)
  end

  def add_lineitem
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_category
      @category = Category.find(params[:id])
    end

    def set_all_categories
      @categorize = Category.all
    end

    def set_all_products
      @products = Product.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :stock_quantity, :image_filename, :category_id)
    end
end
