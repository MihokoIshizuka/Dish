class Order < ApplicationRecord
  has_many :order_details
  has_many :items, through: :order_details
  belongs_to :customer

  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/ }
  validates :address, presence: true
  validates :name, presence: true
  validates :shipping_cost, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :total_payment, presence: true, :numericality => { :greater_than_or_equal_to => 0 }

  enum payment_method: {credit_card: 0, transfar: 1 }
  enum status: {waiting_deposit: 0, confirm_deposit: 1, in_production: 2, preparing_shipment: 3, shipped: 4 }

end
