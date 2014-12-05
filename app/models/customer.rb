#
class Customer < ActiveRecord::Base
  belongs_to :province
  has_many :orders
  
  validates :first_name, :last_name, :address, :city, :postal_code,
            :province_id, presence: true
  validates :postal_code, length: { in: 6..7 }

  def name
  	self.first_name + " " + self.last_name
  end
end
