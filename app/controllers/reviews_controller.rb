class ReviewsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @review = Review.new(reviews_params)
    @review.car = @car
    if @review.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private
  def reviews_params
    params.require(:review).permit(:comment, :rating)
  end
end
