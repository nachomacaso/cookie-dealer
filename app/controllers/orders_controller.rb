class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  end

  private
  def order_params
    params.require(:order).permit(:first_name,
                                  :last_name,
                                  :phone,
                                  :email,
                                  :address,
                                  :city,
                                  :state,
                                  :zip_code,
                                  :date)
  end
end
