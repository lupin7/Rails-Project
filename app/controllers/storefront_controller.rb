class StorefrontController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :set_all_categories
  before_action :set_all_products  

  def index
  	@categories = Category.order(:name).limit(3)
  	# @products = Product.limit(3)
    # @categorize = Category.order(:name)
  end

  def show
  end

  def show_all
    @products = Product.page(params[:page]).per(3)
  end

  def search      
    # @items = Product.find(:all,
    # :conditions => ["name LIKE ?",
    # "%#{params[:search]}%"])
  end  

  def search_results    
    search = '%' + params[:search] + "%"
    @found_products = Product.where("name LIKE ? OR description LIKE ?",
                                     search, search)
    # @found_products = Product.search_for(params[:search])
  end

  def search_for
  end

  # def show_by_category
  #   @category = Category.where(params[:id])
  # end


# @items = Product.find(:all,
#     :conditions => ["name LIKE ?",
#     "%#{params[:search]}%"])

  # def _navigate
  #   @categories = Category.order(:name)
  #   # @products = Product.limit(3)
  # end
  # def show_by_category
  #   @category.produ
  # end

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
    # def category_params
    #   params.require(:category).permit(:name, :description)
    # end
end
