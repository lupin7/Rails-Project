class LineItemsController < InheritedResources::Base
  include CurrentOrder
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  def create
    product = Product.find(params[:product_id])
    @line_item = @order.line_items.build(product: product)
    
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.order, flash[:notice] = 'Line item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private

    def line_item_params
      params.require(:line_item).permit(:product_id, :order_id)
    end
end

