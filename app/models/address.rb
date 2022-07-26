class Address < ApplicationRecord
  belongs_to :customer

  validates :postal_code, paresence: true, format: { with: /\A\d{7}\z/ }
  validates :address, presence: true
  validates :name, presence: true

  def finally_address
    '〒' + postal_code + ' ' + address + ' ' + name
  end
end
