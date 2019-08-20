class UsersController < ApplicationController
  def index

  end

  def new

  end

  def create

  end

  def show
    #@user = User.find(params[:id])
    # get user number 1
    # will return an array
    @items = Item.where(user_id: params[:id].to_i, repairing: false, completed: false)
    # @items = Item.find_all{|item| item.user_id == params[:id].to_i && ...}
    @repairingitems = Item.where(user_id params[:id].to_i,reparing: true, completed: false)
    @completeditems = Item.where(user_id params[:id].to_i,reparing: false, completed: true)




  end

  def edit

  end

  def update

  end

  def destroy

  end

end