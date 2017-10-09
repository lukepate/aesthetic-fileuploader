class OrdersController < ApplicationController


  def index
    @user = current_user
    @orders=Order.where(user_id: current_user.id)

  end
  def show

    @friends = Friend.all
    @user = current_user
    @order = Order.find_by(id: params[:id])
    @orders=Order.where(user_id: current_user.id)
    @shirts = Shirt.all

    @shirt = Shirt.find_by(id: params[:id])
    @shirt_order_id = Shirt.find_by(order_id: params[:order_id])

  end

  def create
    @user = current_user
    Order.create(name: params[:name],
              date: params[:complete],
              complete: params[:total],
              user_id: current_user.id)
    redirect_to ("/")
  end
  def destroy
    Order.destroy(params[:id])
    redirect_to ("/")
  end
  end
