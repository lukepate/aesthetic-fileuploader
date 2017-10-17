class OrdersController < ApplicationController


  def index
    @friends = Friend.all
    @users = User.all
    @user = current_user
    @order = Order.find_by(id: params[:id])
    @orders=Order.all
    @shirts = Shirt.all

    @shirt = Shirt.find_by(id: params[:id])
    @shirt_order_id = Shirt.find_by(order_id: params[:order_id])

  end
  def show

    @friends = Friend.all
    @users = User.all
    @user = current_user
    @order = Order.find_by(id: params[:id])
    @orders=Order.all
    @shirts = Shirt.all

    @shirt = Shirt.find_by(id: params[:id])
    @shirt_order_id = Shirt.find_by(order_id: params[:order_id])

  end



def edit
  @order = Order.find_by(id: params[:id])

end

def update
  @order = Order.find_by(id: params[:id])
  if @order.update_attributes(order_params)
    flash[:notice] = 'Profile was successfully updated.'
  else
    render "edit"
  end
  redirect_to :back
end




def order_params
  params.require(:order).permit(:name, :complete)
end



  def create
    @user = current_user
    @currentUser = current_user.id
    @users = User.all
    @orders=Order.all
    @shirts = Shirt.all
    @friends = Friend.all
    @order=Order.where(id: current_user.id)
    Order.create(name: params[:name],
              date: params[:date],
              complete: params[:complete],
              date: params[:date],
              contact_name: params[:contact_name],
              address: params[:address],
              zip_code: params[:zip_code],
              shipping: params[:shipping],
              state: params[:state],
              user_id: current_user.id)
      respond_to do |format|
        format.html { redirect_to orders_url }
        format.js { head :ok }
      end
  end
  def destroy
    Order.destroy(params[:id])
    redirect_to ("/")
  end


end
