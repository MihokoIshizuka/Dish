class Admin::OrdersController < ApplicationController

  def show
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admin_order_path(@customer.id)
    end
  end

  def customer_order
    @customer = Customer.find(params[:customer_id])
    @orders = @customer.Order.all
  end

  private

  def customer_params
    params.require(:order).permit(:status)
  end

end
