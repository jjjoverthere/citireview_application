class ReviewsController < ApplicationController
    def new
    end
    def index
        @reviews = Review.all
    end
    
    def show
        @review = Review.find(params[:id])
    end

    def create
        @review = Review.new(review_params)
        @review.save
        redirect_to @review
    end
    private
        def review_params
            params.require(:review).permit(:name, :description)
        end
end
