class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :products, :through => :line_items
  belongs_to :customer

  # def total_price
  #   items.to_a.sum(&:full_price)
  # end
end
