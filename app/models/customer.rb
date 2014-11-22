#
class Customer < ActiveRecord::Base
  belongs_to :province

  validates :first_name, :last_name, :address, :city, :postal_code,
            :province_id, presence: true
  validates :postal_code, length: { in: 6..7 }
end
