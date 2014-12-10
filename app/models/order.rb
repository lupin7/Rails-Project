#
class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  belongs_to :customer

  def total_price
    line_items.to_a.sum(&:total)
  end

  def paypal_url(return_url)
    values = {
      business: 'marc_mce_2004-facilitator@yahoo.com',
      cmd: '_cart',
      upload: 1,
      return: return_url,
      invoice: id
    }
    line_items.each_with_index do |item, index|
      values.merge!({  "amount_#{index + 1}" => item.price,
                       "item_name_#{index + 1}" => item.product.name,
                       "item_number_#{index + 1}" => item.id,
                       "quantity_#{index + 1}" => item.quantity
                    })
    end    
    'https://www.sandbox.paypal.com/cgi-bin/webscr?' + values.map { |k, v| "#{k}=#{v}" }.join('&')
  end
end
  # def express_token=(token)
  #   self[:express_token] = token
  #   if new_record? && !token.blank?
  #     # you can dump details var if you need more info from buyer
  #     details = EXPRESS_GATEWAY.details_for(token)
  #     self.express_payer_id = details.payer_id
  #   end
  # end

  # def express_purchase_options
  #   {
  #     :ip => ip,
  #     :token => express_token,
  #     :payer_id => express_payer_id
  #   }
  # end
  
  # def total_price
  #   items.to_a.sum(&:full_price)
  # end