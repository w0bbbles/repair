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
  #Qns for Ben from WenLei wld this 2 item_params conflict? 21/08/2019 9:27PM
  #WenLei item_params
  def item_params
    params.require(:items).permit(:name, :description, :image, :user_id)
  end

  #Ben item_params
  def item_params
    params.require(:items).permit(:name, :description, :image, :user_id, :repairing, :completed)
  end
end