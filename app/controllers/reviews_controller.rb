class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_reviews)
    @review.restaurant_id = @restaurant.id
    if @review.save!
      redirect_to @restaurant
    else
      render :new
    end
  end

  def destroy
  end

  private
  def params_reviews
    params.require(:review).permit(:content)
  end
end
