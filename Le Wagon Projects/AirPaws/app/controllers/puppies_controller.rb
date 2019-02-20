class PuppiesController < ApplicationController

  def index
    if params[:breed].present?
        @puppies = Puppy.search_by_breed(params[:breed])
        if params[:location].present?
          @puppies = @puppies.search_by_location(params[:location])
        else
          @puppies
        end
    elsif params[:location].present?
      @puppies = Puppy.search_by_location(params[:location])
    else
      @puppies = Puppy.all
    end
  end

  def show
    @puppy = Puppy.find(params[:id])
    @booking = Booking.new
    @user = current_user
  end

  def new
    @puppy = Puppy.new
    @user = current_user
  end

  def create
    @user = current_user
    @puppy = Puppy.new(puppy_params)
    @puppy.owner = current_user
    if @puppy.save!
      redirect_to puppy_path(@puppy)
    else
      render :new
    end
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @user = current_user
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @puppy.destroy
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age, :location, :price, :user_id, :photo)
  end

end
