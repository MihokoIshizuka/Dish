class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order

  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :amount, presence: true, :numericality => { :greater_than_or_equal_to => 0 }

  enum making_status: { cannnot_start: 0, waiting_start: 1, in_production: 2, completed: 3 }

end
