class ShirtsController < ApplicationController
  def index
    @shirts=Shirt.all
  end
  def show
    @friends = Friend.all
    @user = current_user
    @order = Order.find_by(id: params[:id])
    @orders=Order.where(user_id: current_user.id)
    @shirts = Shirt.all

    @shirt = Shirt.find_by(id: params[:id])



    @shirt_meet = [@orders,@shirts].flatten

    @meet = Shirt.where({ order_id: "@order.id"})
    @shirt_order_id = Shirt.find_by(order_id: params[:order_id])



  end
  def create
    @user = current_user
    Shirt.create(name: params[:name],
              date: params[:date],
              complete: params[:complete],
              order_id: params[:order_id])
          redirect_to ("/")
    end
    def destroy
      Shirt.destroy(params[:id])
      redirect_to ("/")
    end

end
