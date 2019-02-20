class ReviewsController < ApplicationController
def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @reviewer = current_user
    @reviewee = User.find(params[:reviewable])
    @puppy = Puppy.find(params[:reviewable])

    @review = Review.new(review_params)
    if @review.save
      redirect_to user_path(@review)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @reviewer = current_user
    @reviewee = User.find(params[:reviewable])
    @puppy = Puppy.find(params[:reviewable])

    @review = Review.new(review_params)
    if @review.save
      redirect_to user_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :reviewable_type, :reviewable_id, :booking_id, :body, :cuteness_rating)
  end

end
