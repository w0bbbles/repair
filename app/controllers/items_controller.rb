class ItemsController < ApplicationController
  def index
    # @items = Item.all
    puts "****************"
    puts "USEEEEER"
    puts current_user.id
    @items = Item.where(repairing: false, completed: false)
  end

  def new
    @current = current_user.id
  end

  def create
    # render plain: params[:item].inspect
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
    puts @item
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def item_params
    params.require(:items).permit(:name, :description, :image, :user_id)
  end


end