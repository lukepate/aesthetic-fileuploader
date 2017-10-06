class OrdersController < ApplicationController


  def index
    @user = current_user
    @orders=Order.where(user_id: current_user.id)

  end
  def show
    @order = Order.find_by(id: params[:id])
    @order_id = params[:id]

    # @current_event = Event.where(id: )
    # @merch = Shirt.where(events_id: @current_event.id)

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
