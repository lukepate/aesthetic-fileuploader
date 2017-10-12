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
              style: params[:style],
              color: params[:color],
              xs: params[:xs],
              s: params[:s],
              m: params[:m],
              l: params[:l],
              xl: params[:xl],
              twoxl: params[:twoxl],
              threexl: params[:threexl],
              fourxl: params[:fourxl],
              fivexl: params[:fivexl],
              order_id: params[:order_id])
          redirect_to :back
    end
    def destroy
      Shirt.destroy(params[:id])
      redirect_to :back
    end

end
