class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @customer = @order.customer_id
    @order_details = @order.order_details
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
      if @order.status == 1
        @order.order_details.update_all(making_status: 1)
        redirect_to request.referer
      else
        redirect_to request.referer
      end
  end

  def customer_order
    @customer = Customer.find(params[:customer_id])
    @orders = @customer.Order.all
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end
