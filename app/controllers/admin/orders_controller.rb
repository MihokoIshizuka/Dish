class Admin::OrdersController < ApplicationController

  def show
  end

  def update
  end

  def customer_order
    @customer = Customer.find[params(:customer_id)]
    @orders = @customer.Order.all
  end

end
