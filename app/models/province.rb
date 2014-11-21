class Province < ActiveRecord::Base
  has_many :customers

  validates :name, :code, presence: true
  validates :gst, :pst, :hst, numericality: { greater_than_or_equal_to: 0.00 }
end
