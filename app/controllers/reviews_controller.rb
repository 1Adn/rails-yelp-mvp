class ReviewsController < ApplicationController

  def create
    @review = Review.new(params_review)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating, :restaurant)
  end
end
