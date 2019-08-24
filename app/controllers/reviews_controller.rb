class ReviewsController < ApplicationController
  def index
  end
  def new
    @item = Item.find(params[:id])
  end
  def create
    @reviews = Review.new(review_params)
    @item = Item.find(params[:id])
    @item.reviewed = true
    p "=============================="
    p @reviews
    @reviews.save
    @item.save
    redirect_to "/users/"+@reviews.user_id_id.to_s+"/"
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private
    def review_params
      params.require(:reviews).permit(:review, :rating, :item_id, :repairer_id, :user_id_id)
    end
  end