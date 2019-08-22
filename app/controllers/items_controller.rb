class ItemsController < ApplicationController
  def index
    # @items = Item.all
    @items = Item.where(repairing: false, completed: false)
  end

  def new

  end

  def create

  end

  def show
    @item = Item.find(params[:id])
    @current = current_user.id
  end

  def edit

  end

  def update
    #render plain: params.inspect
    @item = Item.find(params[:id])

    @item.update_attribute(:repairing, params[:item][:repairing])
    # render plain: params.inspect
    redirect_to "/items/"+params[:id]+"/edit"
  end

  def destroy

  end

  private
    def item_params
      params.require(:items).permit(:name, :description, :image, :user_id, :repairing, :completed)
  end
end