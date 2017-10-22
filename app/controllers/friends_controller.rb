class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
    @user = current_user
    @order = Order.find_by(id: params[:id])
    @orders=Order.where(user_id: current_user.id)
    @shirts = Shirt.all

    @shirt = Shirt.find_by(id: params[:id])

  end



  # GET /friends/1
  # GET /friends/1.json
  def show
    @shirt_id = Shirt.find_by(id: params[:id])
  end

  # GET /friends/new
  def new
    @friend = Friend.new
  end

  # GET /friends/1/edit
  def edit
  end

  # POST /friends
  # POST /friends.json
  def create
    @friend = Friend.new(friend_params)

    @order = Order.find_by(id: params[:id])
    @user = current_user
    Friend.create(shirt_id: params[:shirt_id],
                      order_id: params[:order_id],
                      avatar: params[:avatar],
                      avatar_file_name: params[:avatar_file_name],
                      avatar_content_type: params[:avatar_content_type],
                      avatar_file_size: params[:avatar_file_size],
                      shirt_name: params[:shirt_name])

    respond_to do |format|
      if @friend.save
        format.html { redirect_to :back, notice: 'File was successfully created.' }
        format.js  { render action: 'show', status: :created, location: @friend }
      else
        format.html { render action: 'show' }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    respond_to do |format|
      if @friend.update(friend_params)
        format.html { redirect_to :back, notice: 'File was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friend.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friend_params
      params.require(:friend).permit(:avatar, :name, :shirt_id, :order_id, :shirt_name, :shirt_name, :ink, :print, :size, :user_id)
    end

end
