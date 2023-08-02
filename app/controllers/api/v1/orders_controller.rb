class Api::V1::OrdersController < ApplicationController
    skip_before_action :authorized

    def index
        orders = Order.all
        render json: orders
    end


    def create
        order = Order.create(order_params)
        render json: order
    end

    private

    def order_params
        params.require(:order).permit(:products, :quantity, :total_price, :phone_number, :status , :user_id)
    end
end