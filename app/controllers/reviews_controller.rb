class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.restaurant_id = @restaurant.id
    if @review.save!
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def params_review
    params.require(:review).permit(:content)
  end
end
