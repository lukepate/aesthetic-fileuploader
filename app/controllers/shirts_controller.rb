class ShirtsController < ApplicationController
  def index
    @shirts=Shirt.all
  end
  def show
    @shirts=Shirt.all
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
