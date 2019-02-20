class UsersController < ApplicationController
def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
    # @puppy = Puppy.find(params[:puppy_id])

    require 'json'
    require 'open-uri'
    url = 'https://api.teleport.org/api/urban_areas/'
    teleport_data = open(url).read
    location = JSON.parse(teleport_data)

    @backgroundphoto = location["_links"]["ua:item"]
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to user_path(@user)
  #   else
  #     render :new
  #   end
  # end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :location, :photo)
  end

end
